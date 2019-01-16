# Graceful shutdown
Do graceful shutdown of given programs and wait for them to exit, in doing so, on Linux.  

Usecase: on KDE 5, put `graceful-shutdown.sh` in `~/.config/plasma-workspace/shutdown/` and make sure `get-pidof.sh` is in `PATH` environment variable of the plasma desktop environment. Change `programs_list` variable in `graceful-shutdown.sh` to your usecase.
