---
layout: default
title: Resources
permalink: /resources/
---

<div style="text-align: center; margin-bottom: 3rem;">
  <h1 class="section-title">Resource Library</h1>
  <p style="color: var(--secondary);">Browse and download shared resources and files.</p>
</div>

<div class="assets-grid">
  <!-- Font Resources -->
  <div class="asset-card">
    <h3><a href="{{ "/resources/font/times.ttf" | relative_url }}" target="_blank">Times Font</a></h3>
    <div class="asset-meta">
      <span class="file-type">TTF</span>
      <span>~500 KB</span>
      <span>Font</span>
    </div>
    <p class="asset-description">Classic Times New Roman font file. Perfect for professional documents and traditional typography.</p>
    <div class="asset-actions">
      <a href="{{ "/resources/font/times.ttf" | relative_url }}" class="btn" target="_blank">👁 View</a>
      <a href="{{ "/resources/font/times.ttf" | relative_url }}" class="btn btn-danger" download>⬇ Download</a>
    </div>
  </div>
</div>

<div style="margin-top: 3rem;">
  <h2 class="section-title">Resource Categories</h2>
  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 2rem; margin-top: 2rem;">
    
    <div style="text-align: center; padding: 2rem; background: rgba(255,255,255,0.05); border: 1px solid var(--border); border-radius: 8px;">
      <div style="font-size: 2rem; margin-bottom: 1rem;">🔤</div>
      <h3 style="color: var(--primary); margin-bottom: 1rem;">Fonts</h3>
      <p style="color: var(--secondary); margin-bottom: 1rem;">Typography resources</p>
      <a href="{{ "/resources/font/" | relative_url }}" class="btn">Browse Fonts</a>
    </div>
    
    <div style="text-align: center; padding: 2rem; background: rgba(255,255,255,0.05); border: 1px solid var(--border); border-radius: 8px;">
      <div style="font-size: 2rem; margin-bottom: 1rem;">🖼️</div>
      <h3 style="color: var(--primary); margin-bottom: 1rem;">Images</h3>
      <p style="color: var(--secondary); margin-bottom: 1rem;">Graphics and photos</p>
      <a href="{{ "/resources/images/" | relative_url }}" class="btn">Browse Images</a>
    </div>
    
    <div style="text-align: center; padding: 2rem; background: rgba(255,255,255,0.05); border: 1px solid var(--border); border-radius: 8px;">
      <div style="font-size: 2rem; margin-bottom: 1rem;">🛠️</div>
      <h3 style="color: var(--primary); margin-bottom: 1rem;">Tools</h3>
      <p style="color: var(--secondary); margin-bottom: 1rem;">Utilities and software</p>
      <a href="{{ "/resources/tools/" | relative_url }}" class="btn">Browse Tools</a>
    </div>
    
  </div>
</div>

<script>
// Auto-detect files in resources directory
document.addEventListener('DOMContentLoaded', function() {
  // This will be enhanced with dynamic file detection
  console.log('Resource library loaded');
});
</script>
