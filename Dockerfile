FROM ubuntu
RUN apt-get update && apt-get install --yes \
    zsh \
    edid-decode \
    automake \
    make \
    bsdmainutils \
    dos2unix \
    gcc \
    unzip \
    wget
RUN wget https://github.com/akatrevorjay/edid-generator/archive/master.zip && \
  unzip master.zip

WORKDIR /edid-generator-master
COPY cvt /
COPY resolution-to-edid.sh .
RUN rm *x*.S
ENTRYPOINT ["sh", "./resolution-to-edid.sh"]
