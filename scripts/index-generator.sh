#!/bin/bash

# ASCII Terminal Resource Indexer Script
# Generates ls -la style directory listing.

RESOURCES_DIR="resources"
OUTPUT_FILE="resources/context.html"

echo "ASCII Terminal Resource Indexer v1.0"
echo "====================================="
echo "Scanning $RESOURCES_DIR directory..."

# Check if resources directory exists
if [ ! -d "$RESOURCES_DIR" ]; then
  echo "ls: cannot access '$RESOURCES_DIR': No such file or directory"
  exit 1
fi

# Function to get file permissions in ls -la format
get_permissions() {
  local file="$1"
  if [ -d "$file" ]; then
    echo "drwxr-xr-x"
  else
    echo "-rw-r--r--"
  fi
}

# Function to get file size in bytes
get_file_size() {
  local file="$1"
  if [ -f "$file" ]; then
    stat -c%s "$file"
  else
    echo "4096"
  fi
}

# Function to get date in ls format
get_date() {
  date '+%b %d %H:%M'
}

# Start generating the HTML content
cat > "$OUTPUT_FILE" << 'EOL'
<div class="resource-index">
    <div style="color: #ffffff; font-size: 12px; margin-bottom: 10px; font-family: 'Courier New', monospace;">
        total TOTAL_SIZE_PLACEHOLDER
    </div>
    
    <div style="color: #cccccc; margin-bottom: 15px; font-size: 10px;">
        drwxr-xr-x 2 user user 4096 DATE_PLACEHOLDER .
    </div>
    
    <ul class="resource-list" id="resource-list">
EOL

# Counter for items
file_count=0
dir_count=0
total_size=0

# Process directories first
find "$RESOURCES_DIR" -mindepth 1 -type d | sort | while read -r dir; do
  if [ "$dir" != "$RESOURCES_DIR" ]; then
    dir_name=$(basename "$dir")
    permissions=$(get_permissions "$dir")
    size=$(get_file_size "$dir")
    date_str=$(get_date)
    dir_count=$((dir_count + 1))
    total_size=$((total_size + size))
    
    echo "        <li class=\"resource-item\">" >> "$OUTPUT_FILE"
    echo "            <div class=\"directory\">$permissions  2 user user   $size $date_str $dir_name</div>" >> "$OUTPUT_FILE"
    echo "        </li>" >> "$OUTPUT_FILE"
  fi
done

# Process files (excluding context.html)
find "$RESOURCES_DIR" -mindepth 1 -type f ! -name "context.html" | sort | while read -r file; do
  filename=$(basename "$file")
  permissions=$(get_permissions "$file")
  size=$(get_file_size "$file")
  date_str=$(get_date)
  file_count=$((file_count + 1))
  total_size=$((total_size + size))
  
  echo "        <li class=\"resource-item\">" >> "$OUTPUT_FILE"
  echo "            <a href=\"$file\" class=\"resource-link file\">$permissions  1 user user   $size $date_str $filename</a>" >> "$OUTPUT_FILE"
  echo "        </li>" >> "$OUTPUT_FILE"
done

# Finish the HTML
cat >> "$OUTPUT_FILE" << 'EOL'
    </ul>
    
    <div style="margin-top: 15px; color: #cccccc; font-size: 10px;">
        <span id="file-count">FILE_COUNT_PLACEHOLDER</span> files, <span id="dir-count">DIR_COUNT_PLACEHOLDER</span> directories
        <br>Last update: <span id="scan-time">DATE_PLACEHOLDER</span>
    </div>
</div>

<script>
    // Set timestamps in Unix format
    const now = new Date();
    const unixDate = now.toLocaleDateString('en-US', { 
        month: 'short', 
        day: '2-digit', 
        hour: '2-digit', 
        minute: '2-digit',
        hour12: false 
    });
    document.getElementById('index-date').textContent = unixDate;
    document.getElementById('scan-time').textContent = unixDate;
</script>
EOL

# Replace placeholders
DATE_STR=$(date '+%b %d %H:%M')
TOTAL_FILES=$(find "$RESOURCES_DIR" -mindepth 1 -type f ! -name "context.html" | wc -l)
TOTAL_DIRS=$(find "$RESOURCES_DIR" -mindepth 1 -type d | wc -l)
TOTAL_BLOCKS=$(find "$RESOURCES_DIR" -mindepth 1 ! -name "context.html" | wc -l)

sed -i "s/DATE_PLACEHOLDER/$DATE_STR/g" "$OUTPUT_FILE"
sed -i "s/FILE_COUNT_PLACEHOLDER/$TOTAL_FILES/g" "$OUTPUT_FILE"
sed -i "s/DIR_COUNT_PLACEHOLDER/$TOTAL_DIRS/g" "$OUTPUT_FILE"
sed -i "s/TOTAL_SIZE_PLACEHOLDER/$TOTAL_BLOCKS/g" "$OUTPUT_FILE"

echo ""
echo "Directory listing complete:"
echo "  $TOTAL_FILES files"
echo "  $TOTAL_DIRS directories" 
echo "  $TOTAL_BLOCKS total blocks"
echo ""
echo "Output: $OUTPUT_FILE"
echo "Process completed successfully"
