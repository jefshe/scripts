

sudo apt install zsh vim git libssl-dev curl libcurl4-openssl-dev
# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -e s/ZSH_THEME=.*/ZSH_THEME="agnoster"/g

git config --global user.name "jefshe"
git config --global user.email "jeffrey.shen@displayr.com"


# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

echo "Please change terminal fonts"

# change to vim
sudo update-alternatives --config editor
cp generate.vim ~/.vimrc

sudo apt-get install python-dev python-pip python3-dev python3-pip
# neovim
#sudo add-apt-repository ppa:neovim-ppa/stable
#sudo apt-get update
#sudo apt-get install neovim
#sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
#sudo update-alternatives --config vi
#sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
#sudo update-alternatives --config vim
#sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
#sudo update-alternatives --config editor
#cp neogenerate.vim ~/.config/nvim/init.vim



# R packages
sudo apt-get install protobuf-compiler libprotobuf-dev libprotoc-dev python-protobuf librsvg2-dev libapparmor-dev apparmor-utils libhiredis-dev libev-dev redis-tools build-essential tcl
R -e install.packages(c('RProtoBuf','RCurl','rjson', 'openssl', 'curl', 'git2r', 'protolite', 'tidyverse', 'RUnit'))
echo "github_token:"
read AUTH_TOKEN
R -e devtools::install_github(auth_token=$AUTH_TOKEN )


