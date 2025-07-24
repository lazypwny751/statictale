---
layout: default
title: Resources
permalink: /resources/
---

<div style="text-align: center; margin-bottom: 3rem;">
  <h1 class="section-title">Resource Library</h1>
  <p style="color: var(--secondary);">Browse and download shared resources, tools, and files.</p>
</div>

<div class="assets-grid">
  {% for resource in site.resources %}
    <div class="asset-card">
      <h3><a href="{{ resource.url }}">{{ resource.title }}</a></h3>
      <div class="asset-meta">
        <span class="file-type">{{ resource.file_type | upcase }}</span>
        <span>{{ resource.file_size }}</span>
        <span>{{ resource.upload_date | date: "%b %d" }}</span>
      </div>
      {% if resource.description %}
        <p class="asset-description">{{ resource.description | truncate: 120 }}</p>
      {% endif %}
      <div class="asset-actions">
        <a href="{{ resource.url }}" class="btn">View Details</a>
        {% if resource.file_url %}
          <a href="{{ resource.file_url }}" class="btn btn-danger" download>⬇ Download</a>
        {% endif %}
      </div>
    </div>
  {% endfor %}
</div>

{% if site.resources.size == 0 %}
  <div style="text-align: center; padding: 4rem 2rem; opacity: 0.7;">
    <h3>No resources yet</h3>
    <p>Resources will appear here once they are added to the collection.</p>
  </div>
{% endif %}
