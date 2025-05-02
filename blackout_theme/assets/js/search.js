// Fixed search.js for MkDocs search plugin
(function() {
  "use strict";

  // Wait for DOM to be ready
  document.addEventListener('DOMContentLoaded', function() {
    // Check for essential elements
    const searchInput = document.getElementById('mkdocs-search-query');
    const searchResultsContainer = document.getElementById('mkdocs-search-results');
    const searchModal = document.querySelector('[data-search-modal]');
    const searchToggleButtons = document.querySelectorAll('[data-search-toggle]');
    const searchCloseButton = document.querySelector('[data-search-close]');
    
    if (!searchInput || !searchResultsContainer) {
      console.error("MkDocs Search: Required elements not found (#mkdocs-search-query, #mkdocs-search-results)");
      return;
    }
    
    // Basic Modal Toggle Logic
    const openSearch = () => {
      if (searchModal) {
        searchModal.classList.add('is-active');
        document.body.style.overflow = 'hidden';
        if (searchInput) {
          // Focus the search input after modal opens
          setTimeout(() => searchInput.focus(), 50);
        }
      }
    };
    
    const closeSearch = () => {
      if (searchModal) {
        searchModal.classList.remove('is-active');
        document.body.style.overflow = '';
      }
    };
    
    // Add event listeners
    if (searchModal) {
      // Open search modal
      searchToggleButtons.forEach(button => button.addEventListener('click', openSearch));
      
      // Close search modal with button
      if (searchCloseButton) {
        searchCloseButton.addEventListener('click', closeSearch);
      }
      
      // Close search modal by clicking on backdrop
      searchModal.addEventListener('click', (event) => {
        if (event.target === searchModal) closeSearch();
      });
      
      // Close search modal with escape key
      document.addEventListener('keydown', (event) => {
        if (event.key === 'Escape' && searchModal.classList.contains('is-active')) {
          closeSearch();
        }
      });
    }
    
    // Debug log for search initialization
    console.log("Search modal handlers initialized");
    
    // Check if MkDocs search object is available
    if (typeof window.Search !== 'undefined') {
      console.log("MkDocs Search object found");
    } else {
      console.warn("MkDocs Search object not available yet - search may not function correctly");
    }
  });
})();