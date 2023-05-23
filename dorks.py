import requests

# Function to check if a URL is valid
def check_url(url):
    try:
        response = requests.head(url)
        if response.status_code == 200:
            return True
        else:
            return False
    except requests.exceptions.RequestException:
        return False

# Function to add custom dork
def add_custom_dork():
    custom_dork = input("Enter custom dork: ")
    if custom_dork:
        dorks.append(custom_dork)
        print("Custom dork added successfully.")
    else:
        print("Invalid custom dork.")

# Main function
def main():
    print("Welcome to the Google Dork Tester!")
    url = input("Enter the URL to test against: ")

    # Clear results file
    with open("results.txt", "w") as results_file:
        results_file.write("")

    # Test URL
    print("Testing URL...")
    if check_url(url):
        with open("results.txt", "a") as results_file:
            results_file.write("Valid URL\n")
    else:
        with open("results.txt", "a") as results_file:
            results_file.write("Invalid URL\n")

    # Google dorks
    dorks = [
        f"site:{url} filetype:pdf",
        f"site:{url} inurl:admin",
        f"site:{url} intitle:index.of",
        f"site:{url} intext:password",
        f"site:{url} ext:php",
        f"site:{url} ext:conf"
    ]

    # Custom dorks menu
    while True:
        print("\n--- Custom Dorks Menu ---")
        print("1. Add custom dork")
        print("2. Save dorks")
        print("3. Exit")

        choice = input("Enter your choice: ")

        if choice == "1":
            add_custom_dork()
        elif choice == "2":
            with open("results.txt", "a") as results_file:
                for dork in dorks:
                    results_file.write(f"{dork}\n")
            print("Dorks saved to 'results.txt'.")
            break
        elif choice == "3":
            break
        else:
            print("Invalid choice. Please try again.")

if __name__ == "__main__":
    main()
