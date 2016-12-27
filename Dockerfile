FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install -y python python-dev python-distribute python-pip
RUN apt-get install -y wget
RUN wget https://ftp.mozilla.org/pub/mozilla.org/firefox/releases/40.0.3/linux-x86_64/en-US/firefox-40.0.3.tar.bz2
RUN tar -xjvf firefox-40.0.3.tar.bz2
RUN mv firefox /opt/firefox
RUN ln -sf /opt/firefox/firefox /usr/bin/firefox
RUN apt-get install -y libfontconfig libxrender1 libxcomposite1 libasound2 libdbus-glib-1-2 libgtk2.0-0
RUN apt-get install -y xvfb xfonts-100dpi xfonts-75dpi xfonts-cyrillic xorg dbus-x11
RUN apt-get install -y xvfb
RUN pip install selenium==2.53.6
RUN pip install pattern
RUN pip install pyvirtualdisplay
