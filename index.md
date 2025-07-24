---
layout: default
---

<div class="hero">
  <h1>{{ site.title }}</h1>
  <p>{{ site.description }}</p>
  <a href="#assets" class="btn">Browse Assets</a>
</div>

<section id="assets">
  <h2 class="section-title">Featured Assets</h2>
  
  <div class="assets-grid">
    {% for asset in site.assets limit:6 %}
      <div class="asset-card">
        <h3><a href="{{ asset.url }}">{{ asset.title }}</a></h3>
        <div class="asset-meta">
          <span class="file-type">{{ asset.file_type | upcase }}</span>
          <span>{{ asset.file_size }}</span>
        </div>
        {% if asset.description %}
          <p class="asset-description">{{ asset.description | truncate: 100 }}</p>
        {% endif %}
        <div class="asset-actions">
          <a href="{{ asset.url }}" class="btn">View Details</a>
          {% if asset.file_url %}
            <a href="{{ asset.file_url }}" class="btn btn-danger" download>Download</a>
          {% endif %}
        </div>
      </div>
    {% endfor %}
  </div>
  
  {% if site.assets.size > 6 %}
    <div style="text-align: center; margin-top: 2rem;">
      <a href="/assets/" class="btn">View All Assets</a>
    </div>
  {% endif %}
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
