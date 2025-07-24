---
layout: default
---

<div class="hero">
  <h1>{{ site.title }}</h1>
  <p>{{ site.description }}</p>
  <a href="#assets" class="btn">Browse Assets</a>
</div>

<section id="assets">
  <h2 style="font-family: 'Press Start 2P', monospace; color: var(--primary); text-align: center; margin-bottom: 2rem;">Featured Assets</h2>
  
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
  <h2 style="font-family: 'Press Start 2P', monospace; color: var(--primary); margin-bottom: 2rem;">What You Can Share</h2>
  
  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 2rem; margin-top: 2rem;">
    <div>
      <div style="font-size: 2rem; margin-bottom: 1rem;">🖼️</div>
      <h3>Images</h3>
      <p>PNG, JPEG, GIF, SVG and more</p>
    </div>
    
    <div>
      <div style="font-size: 2rem; margin-bottom: 1rem;">🔤</div>
      <h3>Fonts</h3>
      <p>TTF, OTF, WOFF font files</p>
    </div>
    
    <div>
      <div style="font-size: 2rem; margin-bottom: 1rem;">📄</div>
      <h3>Documents</h3>
      <p>TXT, PDF, DOC and other docs</p>
    </div>
    
    <div>
      <div style="font-size: 2rem; margin-bottom: 1rem;">💾</div>
      <h3>Binaries</h3>
      <p>Executables and binary files</p>
    </div>
  </div>
</section>
