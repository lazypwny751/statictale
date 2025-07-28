#!/bin/bash

# EFI Shell Resource Manager
# This script helps manage resources in the EFI Shell interface

echo "🔧 EFI Shell Resource Manager"
echo "=============================="

RESOURCES_DIR="resources"

function list_resources() {
    echo "📁 Listing resources in $RESOURCES_DIR:"
    find "$RESOURCES_DIR" -type f ! -name "context.html" | sort
}

function count_resources() {
    count=$(find "$RESOURCES_DIR" -type f ! -name "context.html" | wc -l)
    echo "📊 Total resources: $count files"
}

function show_sizes() {
    echo "📏 Resource sizes:"
    find "$RESOURCES_DIR" -type f ! -name "context.html" -exec ls -lh {} \; | awk '{print $5 "\t" $9}'
}

case "$1" in
    "list")
        list_resources
        ;;
    "count")
        count_resources
        ;;
    "sizes")
        show_sizes
        ;;
    *)
        echo "Usage: $0 {list|count|sizes}"
        echo ""
        echo "Commands:"
        echo "  list   - List all resources"
        echo "  count  - Count total resources"
        echo "  sizes  - Show file sizes"
        ;;
esac
