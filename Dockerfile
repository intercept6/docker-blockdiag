FROM python:3.6-alpine
MAINTAINER kmd2kmd

WORKDIR /root/workdir

#Install requirements
RUN apk --update add  build-base \
                      python-dev \
                      py-pip \
                      zlib-dev \
                      jpeg-dev \
                      fontconfig
#Remove apk cache
RUN rm -rf /var/cache/apk/*

#Install blockdiag seqdiag actdiag nwdiat
RUN pip install blockdiag \
                seqdiag \
                actdiag \
                nwdiag

#Install NotoSansCJKjp-Regular
ADD https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip /root/NotoSansCJKjp-hinted.zip
RUN mkdir -p /usr/share/fonts/NotoSansCJKjp && mkdir /root/NotoSansCJKjp
RUN unzip /root/NotoSansCJKjp-hinted.zip -d /root/NotoSansCJKjp
RUN mv /root/NotoSansCJKjp/NotoSansCJKjp-Regular.otf  /usr/share/fonts/NotoSansCJKjp/
RUN rm -rf /root/NotoSansCJKjp

#Configure .blockdiagrc
ADD .blockdiagrc /root/.blockdiagrc
