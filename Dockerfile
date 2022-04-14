FROM  ubuntu:latest
RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak
ADD  sources.list /etc/apt/
RUN apt update 
RUN apt install -y curl
# RUN apt install -y vim
RUN apt install -y git 
# RUN apt install -y zsh
# ADD on-my-zsh.sh   /root/
# RUN chmod 777 /root/on-my-zsh.sh
# RUN /bin/sh -c yes | sh /root/on-my-zsh.sh
# RUN /bin/sh -c  zsh
# ADD exa-linux-x86_64-v0.10.1/* /root/.exa/
# ADD bashrc /root/.bashrc

SHELL ["/bin/bash", "--login", "-i", "-c"]
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
RUN source /root/.bashrc && nvm install 12.14.1
SHELL ["/bin/bash", "--login", "-c"]