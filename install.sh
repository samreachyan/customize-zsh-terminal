#! /usr/bin/bash

echo -e "***************************************"
echo -e "******** SAMREACH - Software **********"
echo -e "***************************************\n\n"

echo "Starting check update system"
apt-get -y update
echo "+ Starting upgrade system"
apt-get -y upgrade

echo "+ Install some package:"
apt-get install zsh -y
apt-get install git -y
echo "Done: zsh and git"

GIT=`which git`
echo $GET 

if [ "x$GIT" = "x" ];then
  echo "No git command found. install it"
fi

# If you can set $HOME by argument as ./install.sh root_directory
if [ -d $1 ]
  then
    echo -e "The provided argument is the file."
    HOME=$1
else
    echo "The given argument does not exist on the file system."
    ehco "Default home_directory=$HOME"
fi

myrepo='https://github.com/robbyrussell/oh-my-zsh.git'
syntax_plugin1="https://github.com/zsh-users/zsh-syntax-highlighting.git"
syntax_plugin2="https://github.com/zsh-users/zsh-autosuggestions.git"
mylocal=$HOME/.oh-my-zs

echo $mylocal
echo $myrepo

echo "Cloning repository into ... $mylocal"
git clone "$myrepo" $HOME/.oh-my-zsh

git clone $syntax_plugin1 $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

git clone $syntax_plugin2 $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions


echo "Copying directory ... for backup: $HOME/.zshrc.origin"
cp -rf $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc
cp -rf $HOME/.zshrc $HOME/.zshrc.orgi

echo "Replace plugins in .zshrc"

filename=$HOME/.zshrc
search="plugins=(git)"
replace="plugins=(git zsh-syntax-highlighting zsh-autosuggestions)"
echo "Replace plugin -> $replace"
if [[ $search != "" && $replace != "" ]]; 
    then
    sed -i "s/$search/$replace/" $filename
fi

search="robbyrussell"
replace="jispwoso"
echo "Replace theme name -> $replace"
if [[ $search != "" && $replace != "" ]]; 
    then
    sed -i "s/$search/$replace/" $filename
fi

echo -e "\n\n************************"
echo -e "******** DONE **********"
echo -e "************************\n"
echo -e "Start command : chsh -s $(which zsh) && source $HOME/.zshrc"

chsh -s $(which zsh) && source $HOME/.zshrc
