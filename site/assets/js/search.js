// MkDocs search integration for custom theme
(function() {
  "use strict";

  var searchIndex = null;
  var searchWorker = null;
  
  // Wait for DOM to be ready
  document.addEventListener('DOMContentLoaded', function() {
    // Check for essential elements
    const searchInput = document.getElementById('mkdocs-search-query');
    const searchResultsContainer = document.getElementById('mkdocs-search-results');
    const searchModal = document.querySelector('[data-search-modal]');
    const searchToggleButtons = document.querySelectorAll('[data-search-toggle]');
    const searchCloseButton = document.querySelector('[data-search-close]');
    
    if (!searchInput || !searchResultsContainer) {
      console.error("MkDocs Search: Required elements not found");
      return;
    }
    
    // Load search index
    fetch(base_url + '/search/search_index.json')
      .then(response => response.json())
      .then(data => {
        searchIndex = data;
        console.log("Search index loaded successfully");
        initializeSearch();
      })
      .catch(error => {
        console.error("Failed to load search index:", error);
        searchResultsContainer.innerHTML = '<p class="search-error">Failed to load search index.</p>';
      });
    
    // Initialize search functionality
    function initializeSearch() {
      if (!searchIndex || typeof lunr === 'undefined') {
        console.error("Search initialization failed: missing index or lunr");
        return;
      }
      
      // Build lunr index
      var idx = lunr(function() {
        this.field('title', { boost: 10 });
        this.field('text');
        this.ref('location');
        
        searchIndex.docs.forEach(function(doc) {
          this.add(doc);
        }, this);
      });
      
      // Handle search input
      var searchTimeout = null;
      searchInput.addEventListener('input', function(e) {
        clearTimeout(searchTimeout);
        var query = e.target.value.trim();
        
        if (query.length === 0) {
          searchResultsContainer.innerHTML = '<p>Type to search...</p>';
          return;
        }
        
        // Debounce search
        searchTimeout = setTimeout(function() {
          performSearch(idx, query);
        }, 200);
      });
      
      // Enable keyboard navigation
      searchInput.addEventListener('keydown', function(e) {
        if (e.key === 'Enter') {
          e.preventDefault();
          var firstResult = searchResultsContainer.querySelector('a');
          if (firstResult) {
            firstResult.click();
          }
        }
      });
    }
    
    // Perform search and display results
    function performSearch(idx, query) {
      try {
        // Add wildcard to make partial matches work better
        var searchQuery = query.split(' ').map(term => term + '*').join(' ');
        var results = idx.search(searchQuery);
        
        if (results.length === 0) {
          searchResultsContainer.innerHTML = '<p>No results found for "' + escapeHtml(query) + '"</p>';
          return;
        }
        
        // Display results
        var html = '<div class="search-results-list">';
        results.slice(0, 20).forEach(function(result) {
          var doc = searchIndex.docs.find(d => d.location === result.ref);
          if (doc) {
            var preview = getSearchPreview(doc.text, query);
            html += '<div class="search-result-item">';
            html += '<a href="' + base_url + '/' + doc.location + '">';
            html += '<div class="search-result-title">' + escapeHtml(doc.title) + '</div>';
            if (preview) {
              html += '<div class="search-result-preview">' + preview + '</div>';
            }
            html += '</a>';
            html += '</div>';
          }
        });
        html += '</div>';
        searchResultsContainer.innerHTML = html;
        
      } catch (error) {
        console.error("Search error:", error);
        searchResultsContainer.innerHTML = '<p class="search-error">An error occurred during search.</p>';
      }
    }
    
    // Get search preview with highlighted terms
    function getSearchPreview(text, query) {
      if (!text) return '';
      
      var terms = query.toLowerCase().split(' ');
      var lowerText = text.toLowerCase();
      var bestIndex = -1;
      var bestScore = 0;
      
      // Find best match location
      terms.forEach(function(term) {
        var index = lowerText.indexOf(term);
        if (index !== -1 && index < 300) {
          var score = 100 - index;
          if (score > bestScore) {
            bestScore = score;
            bestIndex = index;
          }
        }
      });
      
      if (bestIndex === -1) {
        return escapeHtml(text.substring(0, 150)) + '...';
      }
      
      // Extract preview around match
      var start = Math.max(0, bestIndex - 50);
      var end = Math.min(text.length, bestIndex + 150);
      var preview = text.substring(start, end);
      
      if (start > 0) preview = '...' + preview;
      if (end < text.length) preview = preview + '...';
      
      // Highlight matching terms
      terms.forEach(function(term) {
        var regex = new RegExp('(' + escapeRegExp(term) + ')', 'gi');
        preview = preview.replace(regex, '<mark>$1</mark>');
      });
      
      return preview;
    }
    
    // Utility functions
    function escapeHtml(text) {
      var div = document.createElement('div');
      div.textContent = text;
      return div.innerHTML;
    }
    
    function escapeRegExp(string) {
      return string.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
    }
    
    // Modal Toggle Logic
    const openSearch = () => {
      if (searchModal) {
        searchModal.classList.add('is-active');
        document.body.style.overflow = 'hidden';
        setTimeout(() => searchInput.focus(), 50);
      }
    };
    
    const closeSearch = () => {
      if (searchModal) {
        searchModal.classList.remove('is-active');
        document.body.style.overflow = '';
        searchInput.value = '';
        searchResultsContainer.innerHTML = '<p>Type to search...</p>';
      }
    };
    
    // Add event listeners
    if (searchModal) {
      searchToggleButtons.forEach(button => button.addEventListener('click', openSearch));
      
      if (searchCloseButton) {
        searchCloseButton.addEventListener('click', closeSearch);
      }
      
      searchModal.addEventListener('click', (event) => {
        if (event.target === searchModal) closeSearch();
      });
      
      document.addEventListener('keydown', (event) => {
        if (event.key === 'Escape' && searchModal.classList.contains('is-active')) {
          closeSearch();
        }
      });
    }
    
    console.log("Search initialized");
  });
})();