# Setup

## Work
- [WIN]HyperV Enable
- [WIN]root dirs (Files, git)
- [WIN]NAS Connection
- Install Brave: https://brave.com/download/
- Install git: https://git-scm.com/downloads
- Install VeraCrypt: https://www.veracrypt.fr/en/Downloads.html
- Install Windows Terminal: Microsoft Store
  - settings.json
  - oh-my-posh:
  	- https://ohmyposh.dev/docs/installation/linux
  - Nerd Fonts (extract to-> [WIN]C:/Windows/Fonts):
  	- https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Ubuntu.zip
  	- https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SpaceMono.zip
  	- https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip
- [WIN]Install Powershell: via Microsoft Store
- [WIN]Install Ubuntu: via Microsoft Store
  - [WIN]Set Ubuntu to WSL2: `wsl --set-version ubuntu 2`
  - [WIN]Create Windows System Drive symlink: `cd ~ && ln -s /mnt/c winsys`
- Linux Specific Packages and setup:
  - Configure Mounts: `curl -o /fstab <hosted-fstab-file> && sudo mount -a` (or mount Windows Drives `mount -t drvfs C: /mnt/c`)
  - Install ranger: `apt-get install ranger`
    - Use Archived Config for key maps: `curl -o ~/.config/ranger/rc.conf https://raw.githubusercontent.com/ARMcK-Hub/<hosted-rc.conf-file>`
  - Install micro: `curl https://getmic.ro | bash`
    - [WIN]Enable Terminal Clipboard to work in WSL: `echo '{"clipboard": "terminal"}' > ~/.config/micro/settings.json`
  - Install bat: `sudo apt install -y bat && mkdir -p ~/.local/bin && ln -s /usr/bin/batcat ~/.local/bin/bat`
  - Install neofetch: `sudo apt-get install -y neofetch && echo -e "\n# run neofetch on startup\nneofetch\n" >> ~/.bashrc`
- Install VSCode: https://code.visualstudio.com/download
  - Sync Settings (via GitHub account)
  	- Extensions
  	  - zhuangtongfa.material-theme
  	  - pkief.material-icon-theme
  	  - ms-azuretools.vscode-docker
  	  - ms-vscode-remote.vscode-remote-extensionpack
  	  - ritwickdey.liveserver
  	  - yzhang.markdown-all-in-one
  	  - ms-vscode.powershell
- Install Docker Desktop: https://docs.docker.com/get-docker/
- Install Notepad++: https://notepad-plus-plus.org/downloads/
  - Enable dark mode
- Install Powershell: https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell
- Install DBeaver CE: https://dbeaver.io/download/
- Install Calibre: https://calibre-ebook.com/download
  - Sync library to github
- Install Libreoffice: https://www.libreoffice.org/download/download/
  - Enable dark mode
- FileZilla: https://filezilla-project.org/download.php?type=client


## Home DE: Work+
- GeForce Experience: https://www.nvidia.com/en-us/geforce/geforce-experience/
- Armoury Crate: https://rog.asus.com/us/armoury-crate/
- Razer Synapse: https://www.razer.com/synapse-3
- Nord VPN: https://nordvpn.com/download/
- Discord: https://discord.com/download
- Steam: https://store.steampowered.com/about/
- Epic Games Launcher: https://store.epicgames.com/en-US/download
- Spotify: https://www.spotify.com/us/download
- LL: <LL>


## Home Server:
- Brave, git, Docker Desktop, ranger, micro, VSCode
- Install Virt-Manager
  - https://www.linux-kvm.org/page/Main_Page : linux virualization 
  - https://www.qemu.org/download/#linux : emulation / virtualization app
  - https://libvirt.org/ : qemu visual module
  - https://virt-manager.org/ : vm gui
  - https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/5/html/virtualization/chap-virtualization-managing_guests_with_virsh : vm cli
- Create Virtual Machines
  - OpenMediaVault: https://www.openmediavault.org/?page_id=77
  - Minecraft Server: ?docker
  - RetroPie: https://retropie.org.uk/download/