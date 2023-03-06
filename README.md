# Development Environment Automatic ~~Initialization~~ Manager

~~There is not a thing more boring than initialize a developement environment
on a new PC or new OS. So, to avoid to do such thing once again, I decide to 
develop a script to help configure and initialize my dev env automatically.~~


## Overview
It's a new version environment manager. To help users automatically backup and sync 
the configuration files in `$HOME` and `.config`.

- `init.sh` initialize script.
- `backup.sh` backup configuration files in `$HOME` and `.config`
- `update.sh` update local configuration files in `$HOME` and `.config` from `dotfile`

## Usage
1. Revise the var `repo` in `init.sh` to your own dotfiles repo.
2. give the execute permission to `init.sh`, `backup.sh`, `update.sh`
3. execute `init.sh`

## 

## TODO
- [ ] use crontab to sync configuration repo.
- [ ] run users' plugins automatically.
- [ ] Initialize the environment of new installed OS, mainly installing software automatically.

## There it is~ 


