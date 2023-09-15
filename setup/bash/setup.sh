apt-get update
apt-get install -y sudo curl wget git unzip ruby ruby-dev ruby-colorize build-essential ranger bat neofetch

# ranger config
mkdir -p ~/.config/ranger
sudo curl https://raw.githubusercontent.com/armckinney/armckinney/local-add-setup-automation/setup/bash/config/rc.conf -o ~/.config/ranger/rc.conf

# micro install and config
sudo curl https://getmic.ro | bash && mv ./micro /usr/local/bin/
echo '{"clipboard": "terminal"}' > ~/.config/micro/settings.json

# nerdfont install and setup
mkdir /usr/share/fonts && cd /usr/share/fonts
sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip
sudo unzip SourceCodePro.zip -d ~/.fonts
fc-cache -fv

# oh-my-posh install and setup
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh
mkdir ~/.poshthemes
sudo curl https://raw.githubusercontent.com/armckinney/armckinney/main/setup/bash/config/armck.omp.json -o ~/.poshthemes/armck.omp.json

# colorls install
sudo gem install colorls

# batcat alias
sudo mkdir -p ~/.local/bin && sudo ln -s /usr/bin/batcat ~/.local/bin/bat

# add template bashrc to user profile
sudo curl https://raw.githubusercontent.com/armckinney/armckinney/main/setup/bash/config/bashrc.sh >> ~/.bashrc

# restart shell
exec bash
