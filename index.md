---
layout: default
---

<div class="hero">
  <h1>{{ site.title }}</h1>
  <p>{{ site.description }}</p>
  <a href="#resources" class="btn">Browse Resources</a>
</div>

<section id="resources">
  <h2 class="section-title">Featured Resources</h2>
  
  <div class="assets-grid">
    <!-- Sample resources from /resources directory -->
    <div class="asset-card">
      <h3><a href="{{ "/resources/font/times.ttf" | relative_url }}" target="_blank">Times Font</a></h3>
      <div class="asset-meta">
        <span class="file-type">TTF</span>
        <span>~500 KB</span>
      </div>
      <p class="asset-description">Classic Times New Roman font file for professional typography.</p>
      <div class="asset-actions">
        <a href="{{ "/resources/font/times.ttf" | relative_url }}" class="btn" target="_blank">View</a>
        <a href="{{ "/resources/font/times.ttf" | relative_url }}" class="btn btn-danger" download>Download</a>
      </div>
    </div>
  </div>
  
  <div style="text-align: center; margin-top: 2rem;">
    <a href="{{ "/resources/" | relative_url }}" class="btn">View All Resources</a>
  </div>
</section>

<section style="margin-top: 4rem; text-align: center;">
  <h2 class="section-title">Supported File Types</h2>
  
  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 2rem; margin-top: 2rem;">
    <div>
      <div style="font-size: 2rem; margin-bottom: 1rem;">🖼️</div>
      <h3 style="color: var(--primary); margin-bottom: 0.5rem;">Images</h3>
      <p style="color: var(--secondary);">PNG, JPEG, GIF, SVG</p>
    </div>
    
    <div>
      <div style="font-size: 2rem; margin-bottom: 1rem;">🔤</div>
      <h3 style="color: var(--primary); margin-bottom: 0.5rem;">Fonts</h3>
      <p style="color: var(--secondary);">TTF, OTF, WOFF files</p>
    </div>
    
    <div>
      <div style="font-size: 2rem; margin-bottom: 1rem;">📄</div>
      <h3 style="color: var(--primary); margin-bottom: 0.5rem;">Documents</h3>
      <p style="color: var(--secondary);">TXT, PDF, DOC files</p>
    </div>
    
    <div>
      <div style="font-size: 2rem; margin-bottom: 1rem;">💾</div>
      <h3 style="color: var(--primary); margin-bottom: 0.5rem;">Archives</h3>
      <p style="color: var(--secondary);">ZIP, RAR, binary files</p>
    </div>
  </div>
</section>
