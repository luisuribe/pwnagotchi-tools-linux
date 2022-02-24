FROM kalilinux/kali-rolling

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
  apt-get install -y curl wget ieee-data p7zip-full

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get -y install nodejs

RUN wget http://archive.ubuntu.com/ubuntu/pool/universe/h/hcxtools/hcxtools_6.0.2-1_amd64.deb -O /tmp/hcxtools_6.0.2-1_amd64.deb && \
  apt-get -y install /tmp/hcxtools_6.0.2-1_amd64.deb

RUN wget https://hashcat.net/files/hashcat-6.2.5.7z -O /opt/hashcat-6.2.5.7z && \
  7za x -o/opt/hashcat /opt/hashcat-6.2.5.7z
