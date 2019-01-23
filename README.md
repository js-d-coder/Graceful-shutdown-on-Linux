**NOTE**: this project has moved to https://gitlab.com/js-d-coder/Graceful-shutdown-on-Linux

# Graceful shutdown
Do graceful shutdown of given programs and wait for them to exit, in doing so, on Linux distribution.  

## Usecase:
You don't have to close all programs before logging out or shutdown of your Linux distribution. Let this script handle it.  
You have to look for way to execute this script before your system logs out or shutdowns.  
If you use KDE 5 based distributions like KDE Neon (formerly KUbuntu), Manjaro KDE, etc. you use both scripts namely, `graceful-shutdown.sh` and `kde-graceful-shutdown.sh`.  
On other systems use only `graceful-shutdown.sh` script. In either case, change `programs_list` variable in `graceful-shutdown.sh` to your usecase.  
Make sure both scritps are in `PATH` variable of your **desktop environment shell** or you provide absolute path to them.  

### KDE
On KDE 5, put `kde-graceful-shutdown.sh` and `graceful-shutdown.sh` in `~/.config/plasma-workspace/shutdown/`.
