FROM ubuntu:wily
RUN adduser --quiet --disabled-password --gecos '' john
RUN apt-get -y update \
    && apt-get -y upgrade \
    && apt-get -y install \
    aptitude \
    apt-utils \
    digikam \
    digikam-doc \
    kipi-plugins \
    dolphin \
    konsole \
    krita \
    man \
    marble \
    rsync \
    systemsettings \
    vim \
    gimp \
    gimp-lensfun \
    gimp-plugin-registry \
    gimp-gmic \
    gimp-data-extras \
    gimp-texturize \
    gmic \
    rawtherapee \
    pandora \
    hugin \
    hugin-tools \
    gtk-theme-config \
    gtk-theme-switch \
    gnome-themes-standard \
    murrine-themes \ 
    darktable \
    gvfs-backends \
    gimp-help-en \
    ghostscript \
    && apt-get clean

VOLUME /home/john

RUN echo "QT_X11_NO_MITSHM=1" >> /etc/environment \
    && echo "LANG=en_US.UTF-8" >> /etc/environment \
    && echo "LANGUAGE=en_US:en" >> /etc/environment \
    && echo "LC_ALL=en_US.UTF-8" >> /etc/environment \
    && locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8 
ENV QT_X11_NO_MITSHM 1
ENV LANG en_US.UTF-8

CMD /bin/bash -l

