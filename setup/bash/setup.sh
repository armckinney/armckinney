apt-get update
apt-get install -y sudo curl wget git unzip ruby ruby-dev ruby-colorize build-essential ranger bat neofetch

# ranger config
sudo curl -o ~/.config/ranger/rc.conf https://raw.githubusercontent.com/armckinney/armckinney/local-add-setup-automation/setup/bash/config/rc.conf

# micro install and setup
sudo curl https://getmic.ro | bash && mv ./micro /usr/local/bin/
echo '{"clipboard": "terminal"}' > ~/.config/micro/settings.json

# nerdfont install and setup
mkdir /usr/share/fonts && cd /usr/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip
unzip SourceCodePro.zip -d ~/.fonts
fc-cache -fv

# oh-my-posh install and setup
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
chmod +x /usr/local/bin/oh-my-posh
mkdir ~/.poshthemes
sudo curl https://raw.githubusercontent.com/armckinney/armckinney/setup/bash/config/armck.omp.json
echo -e '\n# oh-my-posh\neval "$(oh-my-posh init bash --config ~/.poshthemes/armck.omp.json)"\n' >> ~/.bash.rc

# colorls install and alias
sudo gem install colorls
echo -e "# colorls alias\nalias lc='colorls -a --sd'\nalias llc='colorls -la --sd'\n" >> ~/.bashrc

# batcat alias
sudo mkdir -p ~/.local/bin && ln -s /usr/bin/batcat ~/.local/bin/bat

# neofetch to bashrc
echo -e "# run neofetch on startup\nneofetch\n" >> ~/.bashrc

# restart shell
exec bash
