FROM  ubuntu:latest
RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak
ADD  sources.list /etc/apt/
RUN apt update 
RUN apt install -y curl
# RUN apt install -y vim
RUN apt install -y git 
RUN apt install -y zsh
ADD on-my-zsh.sh   /root/
RUN chmod 777 /root/on-my-zsh.sh
RUN /bin/sh -c yes | sh /root/on-my-zsh.sh
RUN /bin/sh -c  zsh
ADD exa-linux-x86_64-v0.10.1/* /root/.exa/
ADD bashrc /root/.bashrc


ENV NVM_DIR /root/.nvm
ENV NODE_VERSION 10.15.3
ADD nvm.sh /root/
RUN chmod 777 /root/nvm.sh
# Install nvm with node and npm
RUN bash -c   "/root/nvm.sh" \
  && . $NVM_DIR/nvm.sh \ 
  && nvm install $NODE_VERSION