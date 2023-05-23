#!/bin/bash

# Function to test a URL using ping
test_url() {
  ping -c 1 "$1" >/dev/null 2>&1
  if [[ $? -eq 0 ]]; then
    echo "Valid URL" >> results.txt
  else
    echo "Invalid URL" >> results.txt
  fi
}

# Function to test a dork against a URL
test_dork() {
  result=$(curl -s -o /dev/null -w "%{http_code}" "$1")
  if [[ $result == "200" ]]; then
    echo "$2" >> results.txt
  else
    echo "Not Working 😢" >> results.txt
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
test_url "$url"

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
  echo "2. Start testing dorks"
  echo "3. Exit"

  read -p "Enter your choice: " choice

  case $choice in
    1)
      add_custom_dork
      ;;
    2)
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

# Test dorks
count=0
for dork in "${dorks[@]}"; do
  echo "Testing dork: $dork"
  test_dork "$url" "$dork"
  count=$((count + 1))
  remaining=$(( ${#dorks[@]} - count ))
  echo -ne "\rTesting dorks... ${remaining} remaining"
done

echo -e "\nTesting complete. Check 'results.txt' for the output."

# Display error if no dorks found
if [[ ${#dorks[@]} -eq 0 ]]; then
  echo "Error: No dorks found. Please define dorks in the script."
fi
