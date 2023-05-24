# UNSTABLE USE AT YOUR OWN RISK

# Google Dorks Automation <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Gnu-bash-logo.svg/2560px-Gnu-bash-logo.svg.png" alt="Bash Logo" width="125"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/121px-Python-logo-notext.svg.png" alt="python" width="80"><img src="https://static.javatpoint.com/images/javascript/javascript_logo.png" alt="Image 2" width="100">


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

Here are the updated README.md steps for both Python and JavaScript versions of the Google Dorks Automation script:

### Python Version

```markdown
# Google Dorks Automation (Python)

This script automates the process of testing Google dorks against a given URL. Google dorks are specific search queries that can help identify vulnerable or exposed information on websites. This automation script uses a list of predefined Google dorks and allows you to add custom dorks for testing.

## Prerequisites

- Python 3.x
- pip (Python package installer)

## Usage

1. Clone the repository:

   ```shell
   git clone https://github.com/your-username/Google-Dorks-Automation.git
   ```

2. Open a terminal and navigate to the cloned repository:

   ```shell
   cd Google-Dorks-Automation
   ```

3. Install the required dependencies:

   ```shell
   pip install -r requirements.txt
   ```

4. Run the script:

   ```shell
   python google_dorks_automation.py
   ```

5. Enter the URL you want to test against when prompted.

6. The script will start testing the predefined Google dorks included in the script.

7. After testing, the results will be saved in the `results.txt` file.

8. To add custom dorks, follow the prompts in the script. You will be asked to enter a custom dork.

9. To exit the script, press `Ctrl + C`.

## Google Dorks

The script includes a predefined list of Google dorks that can be modified according to your needs. The dorks are stored in the `dorks` list variable in the script file. Each dork follows the fo```
215
​
216
Please note that the license section has been commented out since the license information was not provided. You can uncomment and update that section accordingly if needed.
217
​
218
rmat: `"site:example.com filetype:pdf"`.

Feel free to modify the list of dorks to suit your specific requirements.

Additionally, you can add custom dorks using the prompts in the script. Custom dorks will be appended to the list of predefined dorks for testing.

## Results

The results of the testing will be stored in the `results.txt` file in the repository. Each line in the file represents the outcome of a specific Google dork. If the dork returns an HTTP status code of 200, indicating success, the dork will be listed. Otherwise, "Not Working!!!!1" will be recorded.

Please note that the `results.txt` file will be overwritten each time the script is executed.

<!-- ## License

This project is licensed under the [MIT License](LICENSE). -->

## Disclaimer

The use of this script is at your own risk. Ensure that you have proper authorization before testing Google dorks against any URL. The author takes no responsibility for any misuse or illegal activities conducted using this script.
```

### JavaScript Version

```markdown
# Google Dorks Automation (JavaScript)

This script automates the process of testing Google dorks against a given URL. Google dorks are specific search queries that can help identify vulnerable or exposed information on websites. This automation script uses a list of predefined Google dorks and allows you to add custom dorks for testing.

## Prerequisites

- Node.js (https://nodejs.org)
- npm (Node package manager)

## Usage

1. Clone the repository:

   ```shell
   git clone https://github.com/your-username/Google-Dorks-Automation.git
   ```

2. Open a terminal and navigate to the cloned repository:

   ```shell
   cd Google-Dorks-Automation
   ```

3. Install the required dependencies:

   ```shell
   npm install
   ```

4. Run the script:

   ```shell
   node google_dorks_automation.js
   ```

5. Enter the URL you want to test

 against when prompted.

6. The script will start testing the predefined Google dorks included in the script.

7. After testing, the results will be saved in the `results.txt` file.

8. To add custom dorks, follow the prompts in the script. You will be asked to enter a custom dork.

9. To exit the script, press `Ctrl + C`.

## Google Dorks

The script includes a predefined list of Google dorks that can be modified according to your needs. The dorks are stored in the `dorks` array in the script file. Each dork follows the format: `"site:example.com filetype:pdf"`.

Feel free to modify the list of dorks to suit your specific requirements.

Additionally, you can add custom dorks using the prompts in the script. Custom dorks will be appended to the list of predefined dorks for testing.

## Results

The results of the testing will be stored in the `results.txt` file in the repository. Each line in the file represents the outcome of a specific Google dork. If the dork returns an HTTP status code of 200, indicating success, the dork will be listed. Otherwise, "Not Working!!!!1" will be recorded.

Please note that the `results.txt` file will be overwritten each time the script is executed.

<!-- ## License

This project is licensed under the [MIT License](LICENSE). -->

## Disclaimer

The use of this script is at your own risk. Ensure that you have proper authorization before testing Google dorks against any URL. The author takes no responsibility for any misuse or illegal activities conducted using this script.




