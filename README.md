# Google Dorks Automation <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Gnu-bash-logo.svg/2560px-Gnu-bash-logo.svg.png" alt="Bash Logo" width="125">

This script automates the process of testing Google dorks against a given URL. Google dorks are specific search queries that can help identify vulnerable or exposed information on websites. This automation script uses a list of predefined Google dorks and allows you to add custom dorks for testing.

## Prerequisites

- Bash shell
- cURL

## Usage

1. Clone the repository:

   ```shell
   git clone https://github.com/your-username/Google-Dorks-Automation.git
   ```

2. Open a terminal and navigate to the cloned repository:

   ```shell
   cd Google-Dorks-Automation
   ```

3. Run the script:

   ```shell
   bash google_dorks_automation.sh
   ```

4. Enter the URL you want to test against when prompted.

5. The script will display the main menu:

   ```
   Welcome to the Google Dork Tester!

   Main Menu:
   1. Test predefined dorks
   2. Add custom dorks
   3. Exit

   Enter your choice (1-3):
   ```

6. Choose option 1 to test the predefined Google dorks included in the script.

7. After testing, the results will be saved in the `results.txt` file.

8. To add custom dorks, choose option 2 in the main menu. You will be prompted to enter a custom dork:

   ```
   Enter the custom dork to add (e.g., "site:example.com filetype:pdf"): 
   ```

   You can enter any valid Google dork to add it to the testing list.

9. To exit the script, choose option 3 in the main menu.

## Google Dorks

The script includes a predefined list of Google dorks that can be modified according to your needs. The dorks are stored in the `dorks` array in the script file. Each dork follows the format: `"site:example.com filetype:pdf"`.

Feel free to modify the list of dorks to suit your specific requirements.

Additionally, you can add custom dorks using the "Add custom dorks" menu option. Custom dorks will be appended to the list of predefined dorks for testing.

## Results

The results of the testing will be stored in the `results.txt` file in the repository. Each line in the file represents the outcome of a specific Google dork. If the dork returns an HTTP status code of 200, indicating success, the dork will be listed. Otherwise, "Not Working!!!!1" will be recorded.

Please note that the `results.txt` file will be overwritten each time the script is executed.

## License

This project is licensed under the [MIT License](LICENSE).

## Disclaimer

The use of this script is at your own risk. Ensure that you have proper authorization before testing Google dorks against any URL. The author takes no responsibility for any misuse or illegal activities conducted using this script.

```

The updated README file now includes the Bash logo image beside the title. Make sure to adjust the width of the image (`width="30"`) if needed.
