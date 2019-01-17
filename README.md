# Graceful shutdown
Do graceful shutdown of given programs and wait for them to exit, in doing so, on Linux.  

Usecase: You don't have to close all programs before logging out or shutdown of your system. Let this script handle it.  
on KDE 5, put `graceful-shutdown.sh` in `~/.config/plasma-workspace/shutdown/`. Change `programs_list` variable in `graceful-shutdown.sh` to your usecase.
