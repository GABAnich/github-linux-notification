# github-linux-notification

Simple GitHub notificator for linux.

### Install dependency

```bash
sudo apt-get install jq
sudo apt-get install curl
```

Or another package manager.

### Instalation

```bash
git clone https://github.com/GABAnich/github-linux-notification.git
```

### Requierments

In order to use this notificator you should create personal access token.
https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token.
And grant access to **notifications**.

### Usage

```bash
# to run in foreground
./github-notifications.sh username:token
```

```bash
# to run in background
./github-notifications.sh username:token &>/dev/null &
```

### Icon

In order to have an icon in notifications, you should download one of https://github.com/logos.
And then place the icon in /usr/share/icons or /usr/share/[app]/icons.
