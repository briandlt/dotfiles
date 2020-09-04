echo "Actualizamos nuestra dependencias"
sudo apt-get update && sudo apt-get upgrade
echo "Instalando Dependencias"
sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt-get install git -y
sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs

#Instalar navegadores y otras cosas

echo "Clonando nuestras configuraciones de dotfiles"
git clone git@github.com:briandlt/dotfiles.git ~/.dotfiles


#Agregando enlaces simbolicos
ln -s ~/.dotfiles/git-config/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/zsh-config/.zshrc ~/.zshrc

#Poner por defecto zsh en mi shell