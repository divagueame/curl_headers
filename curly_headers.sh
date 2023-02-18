#!/bin/bash

# Set default values for URL and Referer
DEFAULT_URL="https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3"
DEFAULT_REFERER="http://localhost:3000/"

# Define variables
# Use default values if URL and Referer are not provided as arguments
URL="${1:-$DEFAULT_URL}"
REFERER="${2:-$DEFAULT_REFERER}"
OUTPUT_FILE="output.txt"
SEPARATOR="============================================================"

# Define functions
print_separator() {
  echo -e "\033[1;31m${SEPARATOR}\033[0m"
}

get_headers() {
  curl -v \
    -H "Referer: ${REFERER}" \
    -H "Origin: $REFERER"
    "${URL}"  2>&1 \
    | sed -n '/^\<HTTP/,/^$/p'
}

echo "       "
echo "       "
# Call functions and write output to file
get_headers
# Print separator line to visually separate output
print_separator

# Print reminder of URL and Referer
echo "Target URL: ${URL}"
echo "Referer: ${REFERER}"
echo "       "
echo "       "


# curl -v -H "Referer: http://localhost:3000/" -H "Origin: http://localhost:3000" https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3 -o /dev/null 2>&1 | sed -n '/^> /p; /^< /p'