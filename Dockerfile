FROM danielguerra/ubuntu-xrdp:20.04
MAINTAINER Daniel Jang

WORKDIR /temp
RUN apt-get -y update && \ 
  wget https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh -O /temp/miniconda.sh && \
  bash /temp/miniconda.sh -b -p /opt/miniconda && \
  /opt/miniconda/bin/conda install spyder && \
  /opt/miniconda/bin/conda install jupyter && \
  apt-get install apt-transport-https ca-certificates curl software-properties-common curl -y && \
  curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - && \
  sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/" && \
  sudo apt-get install sublime-text -y 

# environmental variables
RUN echo "export PATH=$PATH:/opt/miniconda/bin/" >> /etc/profile

# cleansing  
RUN apt-get clean && rm -rf /temp/*

# shared volume
VOLUME /tunnel
RUN chmod 777 /tunnel
