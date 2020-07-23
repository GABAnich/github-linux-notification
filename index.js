const { Octokit } = require("@octokit/core");
const { exec } = require("child_process");
const dotenv = require("dotenv");

dotenv.config();

const octokit = new Octokit({ auth: process.env.ACCESS_TOKEN });

const delayMS = 1000 * 60;

setInterval(async () => {
  try {
    const { data } = await octokit.request("GET /notifications");
    data.forEach(notification => {
      exec(`notify-send '${notification.subject.title}' 'GitHub'`);
    });
  } catch (err) {
    console.log(err);
  }
}, delayMS);
