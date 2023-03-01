# ----- USER FEATURES -----

# default using micro editor
export VISUAL=micro;
export EDITOR=micro;

# Windows hosts file
export WINDOWS_HOST_FILE=/mnt/c/Windows/System32/Drivers/etc/hosts

# fix git dir ownership
function arm_chown_git () { sudo chown -R $USER:$USER ~/git/; };

# fix pit dir ownership
function arm_chown_pit () { sudo chown -R $USER:$USER ~/pit/; };

# fix docker metadata, removes Windows Docker AppData
function arm_docker_you_piece_of_shit () { sudo rm -rf /mnt/c/Users/$USER/.docker; };

# oh-my-posh
eval "$(oh-my-posh init bash --config ~/.poshthemes/armck.omp.json)"

# colorls alias
alias lc='colorls -a --sd'
alias llc='colorls -la --sd --gs'

# run neofetch on startup
if [ $(ps -o comm= -p $PPID) == "init" ]; then neofetch; fi;
