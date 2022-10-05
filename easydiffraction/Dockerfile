FROM jupyter/base-notebook:ubuntu-20.04

USER root

RUN apt-get -y update \
 && apt-get install -y dbus-x11 \
   firefox \
   xfce4 \
   xfce4-panel \
   xfce4-session \
   xfce4-settings \
   xorg \
   xubuntu-icon-theme
   
# Remove light-locker to prevent screen lock
RUN wget 'https://sourceforge.net/projects/turbovnc/files/2.2.5/turbovnc_2.2.5_amd64.deb/download' -O turbovnc_2.2.5_amd64.deb && \
   apt-get install -y -q ./turbovnc_2.2.5_amd64.deb && \
   apt-get remove -y -q light-locker && \
   rm ./turbovnc_2.2.5_amd64.deb && \
   ln -s /opt/TurboVNC/bin/* /usr/local/bin/

# apt-get may result in root-owned directories/files under $HOME
RUN chown -R $NB_UID:$NB_GID $HOME

# Add everything in this build directory into the image 
ADD . /opt/install
RUN fix-permissions /opt/install

USER $NB_USER
RUN cd /opt/install && \
   conda env update -n base --file environment.yml
   
USER root
SHELL [ "/bin/bash", "--login", "-c" ]

#####################################################################
# easyDiffraction
# You cannot snap install as snap cannot be used in a container 
# https://forum.snapcraft.io/t/unable-to-install-snapcraft-snap-in-docker-image-ubuntu-19-10/13793

# https://github.com/easyScience/easyDiffractionApp/releases/tag/v0.8.2-beta
# https://github.com/easyscience/easydiffractionapp/releases/download/v0.8.2-beta/easydiffraction_Linux_x86-64_v0.8.2-beta.zip
     

RUN apt-get -y update && \ 
    apt-get install -yq --no-install-recommends \ 
    libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 \ 
    libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 \ 
    libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 \ 
    libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 \ 
    libnss3 libxcb-glx0 libxcb-glx0 libxkbcommon-x11-0 libgl1-mesa-glx unzip

RUN wget 'https://github.com/easyscience/easydiffractionapp/releases/download/v0.8.2-beta/easydiffraction_Linux_x86-64_v0.8.2-beta.zip' && \
    unzip easydiffraction_Linux_x86-64_v0.8.2-beta.zip 
    
RUN ./easyDiffraction_Linux_x86-64_v0.8.2-beta --accept-licenses -root /home/jovyan/easyDiffraction --default-answer --confirm-command install


# Breaking here probably because .local/share/applications doesn't exist - aborting the installation

#[11818] Operation \"Copy\" with arguments \"/home/easyDiffraction/easyDiffraction.desktop; /home/jovyan/.local/share/applications/easyDiffraction.desktop\" failed: Cannot copy file \"/home/easyDiffraction/easyDiffraction.desktop\" to \"/home/jovyan/.local/share/applications/easyDiffraction.desktop\": Cannot create /home/jovyan/.local/share/applications/easyDiffraction.desktop for output
##########################################################################

USER $NB_USER
