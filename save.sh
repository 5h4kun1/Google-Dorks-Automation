#!/bin/bash

# Function to check if a URL is valid
check_url() {
  result=$(curl -s -o /dev/null -w "%{http_code}" "$1")
  if [[ $result == "200" ]]; then
    echo "Valid URL" >> results.txt
  else
    echo "Invalid URL" >> results.txt
  fi
}

# Function to add custom dork
add_custom_dork() {
  read -p "Enter custom dork: " custom_dork
  if [[ -n $custom_dork ]]; then
    dorks+=("$custom_dork")
    echo "Custom dork added successfully."
  else
    echo "Invalid custom dork."
  fi
}

# Main menu
echo "Welcome to the Google Dork Tester!"
read -p "Enter the URL to test against: " url

# Clear results file
> results.txt

# Test URL
echo "Testing URL..."
check_url "$url"

# Google dorks
dorks=(
  "site:$url filetype:pdf"
  "site:$url inurl:admin"
  "site:$url intitle:index.of"
  "site:$url intext:password"
  "site:$url ext:php"
  "site:$url ext:conf"
)

# Custom dorks menu
while true; do
  echo -e "\n--- Custom Dorks Menu ---"
  echo "1. Add custom dork"
  echo "2. Save dorks"
  echo "3. Exit"

  read -p "Enter your choice: " choice

  case $choice in
    1)
      add_custom_dork
      ;;
    2)
      for dork in "${dorks[@]}"; do
        echo "$dork" >> results.txt
      done
      echo "Dorks saved to 'results.txt'."
      break
      ;;
    3)
      exit
      ;;
    *)
      echo "Invalid choice. Please try again."
      ;;
  esac
done
