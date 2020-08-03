# Usage
# python3 main.py {username} {token}

import sys
import time
import requests
import subprocess

username = sys.argv[1]
token = sys.argv[2]
url = "https://api.github.com/notifications"

while True:
    res = requests.get(url , auth=(username, token)).json()
    for n in res:
        message = n["subject"]["title"]
        subprocess.Popen(['notify-send', message, "GitHub", "-i", "Octocat"])
    time.sleep(60)
