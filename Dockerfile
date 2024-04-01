#FROM --platform=linux/386 jlesage/baseimage-gui:debian-11-v4.5
#FROM --platform=linux/amd64 jlesage/baseimage-gui:debian-11-v4.5
FROM jlesage/baseimage-gui:alpine-3.18-v4.5.2





RUN add-pkg chromium
RUN add-pkg file-roller

#RUN apt-get update
#RUN apt-get install chromium -y

COPY startapp.sh /startapp.sh
RUN chmod +x /startapp.sh


#RUN mkdir /config/1
COPY 1.tar.gz.partaaa /config/1.tar.gz.partaaa
COPY 1.tar.gz.partaab /config/1.tar.gz.partaab
COPY 1.tar.gz.partaac /config/1.tar.gz.partaac
COPY 1.tar.gz.partaad /config/1.tar.gz.partaad
COPY 1.tar.gz.partaae /config/1.tar.gz.partaae
COPY 1.tar.gz.partaaf /config/1.tar.gz.partaaf
COPY 1.tar.gz.partaag /config/1.tar.gz.partaag
COPY 1.tar.gz.partaah /config/1.tar.gz.partaah



RUN cat /config/1.tar.gz.parta* >/config/1.tar.gz

RUN cd /config && tar -xf /config/1.tar.gz 




ENV DISPLAY_WIDTH=1024
ENV DISPLAY_HEIGHT=768

