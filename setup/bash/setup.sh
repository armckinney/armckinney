apt-get update
apt-get install -y curl wget git unzip ranger bat neofetch

# ranger config
curl -o ~/.config/ranger/rc.conf https://raw.githubusercontent.com/ARMcK-hub/ARMcK-hub/local-add-setup-automation/setup/bash/config/rc.conf

# micro instal; and setup
curl https://getmic.ro | bash && mv ./micro /usr/local/bin/
echo '{"clipboard": "terminal"}' > ~/.config/micro/settings.json

# nerdfont install and setup
mkdir /usr/share/fonts && cd /usr/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete.ttf
sudo fc-cache

# oh-my-posh install and setup
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
chmod +x /usr/local/bin/oh-my-posh
mkdir ~/.poshthemes
curl https://raw.githubusercontent.com/ARMcK-Hub/ARMcK-hub/setup/bash/config/armck.omp.json
echo -e '\n#oh-my-posh\neval "$(oh-my-posh init bash --config ~/.poshthemes/armck.omp.json)"\n' >> ~/.bash.rc

# bat alias
mkdir -p ~/.local/bin && ln -s /usr/bin/batcat ~/.local/bin/bat

# neofetch to bashrc
echo -e "\n# run neofetch on startup\nneofetch\n" >> ~/.bashrc

# restart shell
exec bash
