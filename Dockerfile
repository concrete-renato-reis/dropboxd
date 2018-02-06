FROM ubuntu

MAINTAINER Renato dos Reis Nascimento <renato@renatodreis.com.br>

RUN apt-get update && apt install wget curl -y && apt clean 

RUN cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

CMD /root/.dropbox-dist/dropboxd