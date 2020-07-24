# github-linux-notification

Simple GitHub notificator for Linux.

![example](https://github.com/GABAnich/github-linux-notification/blob/master/images/example.png)

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

```bash
# to run in background (can survive terminal closing)
nohup ./github-notifications.sh username:token &
```

### Icon

In order to have an icon in notifications, you should download one of https://github.com/logos.
Or take from /icons folder. And then place the icon in /usr/share/icons or /usr/share/[app]/icons.
