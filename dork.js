const readline = require('readline');
const axios = require('axios');
const fs = require('fs');

// Function to check if a URL is valid
async function checkUrl(url) {
  try {
    const response = await axios.head(url);
    if (response.status === 200) {
      return true;
    } else {
      return false;
    }
  } catch (error) {
    return false;
  }
}

// Function to add custom dork
function addCustomDork() {
  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
  });

  rl.question("Enter custom dork: ", function (customDork) {
    if (customDork) {
      dorks.push(customDork);
      console.log("Custom dork added successfully.");
    } else {
      console.log("Invalid custom dork.");
    }
    rl.close();
  });
}

// Main function
async function main() {
  console.log("Welcome to the Google Dork Tester!");
  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
  });

  let url = await new Promise((resolve) => {
    rl.question("Enter the URL to test against: ", (answer) => {
      resolve(answer);
    });
  });

  // Clear results file
  fs.writeFileSync("results.txt", "");

  // Test URL
  console.log("Testing URL...");
  if (await checkUrl(url)) {
    fs.appendFileSync("results.txt", "Valid URL\n");
  } else {
    fs.appendFileSync("results.txt", "Invalid URL\n");
  }

  // Google dorks
  let dorks = [
    `site:${url} filetype:pdf`,
    `site:${url} inurl:admin`,
    `site:${url} intitle:index.of`,
    `site:${url} intext:password`,
    `site:${url} ext:php`,
    `site:${url} ext:conf`
  ];

  // Custom dorks menu
  while (true) {
    console.log("\n--- Custom Dorks Menu ---");
    console.log("1. Add custom dork");
    console.log("2. Save dorks");
    console.log("3. Exit");

    let choice = await new Promise((resolve) => {
      rl.question("Enter your choice: ", (answer) => {
        resolve(answer);
      });
    });

    if (choice === "1") {
      addCustomDork();
    } else if (choice === "2") {
      fs.appendFileSync("results.txt", dorks.join("\n") + "\n");
      console.log("Dorks saved to 'results.txt'.");
      break;
    } else if (choice === "3") {
      break;
    } else {
      console.log("Invalid choice. Please try again.");
    }
  }

  rl.close();
}

main();
