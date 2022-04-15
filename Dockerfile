FROM	 archlinux:latest
RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak
ADD  sources.list /etc/apt/
# RUN apt update 
RUN   echo y | pacman -S  curl
 RUN   echo y |  pacman -S   vim
RUN  echo y |   pacman -S git 
RUN  echo y |  pacman -S wget 
RUN pacman -Szsh
ADD  ohmyzsh  /root/.oh-my-zsh
RUN cp  ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
RUN chsh -s $(which zsh)




ADD exa-linux-x86_64-v0.10.1/* /root/.exa/
ADD bashrc /root/.bashrc
# RUN  wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
ADD nvm  /root/.nvm
ENV NVM_DIR=/root/.nvm
# RUN chmod 700 /root/.nvm/mvn.sh
RUN   /root/.nvm/nvm.sh install node
 