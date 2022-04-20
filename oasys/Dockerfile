FROM jupyter/base-notebook


USER root

RUN apt-get -y update \
 && apt-get install -y dbus-x11 \
   firefox \
   xfce4 \
   xfce4-panel \
   xfce4-session \
   xfce4-settings \
   wget \
   xorg \
   xubuntu-icon-theme \
   git

# Remove light-locker to prevent screen lock
RUN wget 'https://sourceforge.net/projects/turbovnc/files/2.2.5/turbovnc_2.2.5_amd64.deb/download' -O turbovnc_2.2.5_amd64.deb && \
   apt-get install -y -q ./turbovnc_2.2.5_amd64.deb && \
   apt-get remove -y -q light-locker && \
   rm ./turbovnc_2.2.5_amd64.deb && \
   ln -s /opt/TurboVNC/bin/* /usr/local/bin/

# apt-get may result in root-owned directories/files under $HOME
RUN chown -R $NB_UID:$NB_GID $HOME

ADD . /opt/install
RUN fix-permissions /opt/install
ADD ./install-oasys.sh /install-oasys.sh
RUN chmod +x /install-oasys.sh && /install-oasys.sh && rm /install-oasys.sh
ADD ./oasys/oasys.sh /usr/local/bin/oasys.sh
ADD ./oasys/oasys.desktop /usr/share/applications/oasys.desktop
ADD ./oasys/oasys-icon.xpm /usr/share/pixmaps/oasys-icon.xpm
RUN chmod +x /usr/local/bin/*.sh
USER $NB_USER
RUN mkdir $HOME/Oasys && \
    wget https://raw.githubusercontent.com/oasys-esrf-kit/oasys_hercules/main/2022/hercules_coherence_transport.ows -O $HOME/Oasys/hercules_coherence_transport.ows && \
    wget https://raw.githubusercontent.com/oasys-esrf-kit/oasys_hercules/main/2022/hercules_photon_transport.ows -O $HOME/Oasys/hercules_photon_transport.ows && \
    wget https://raw.githubusercontent.com/oasys-esrf-kit/oasys_hercules/main/2022/hercules_power_transport_optical_elements.ows -O $HOME/Oasys/hercules_power_transport_optical_elements.ows && \
    wget https://raw.githubusercontent.com/oasys-esrf-kit/oasys_hercules/main/2022/hercules_power_transport_sources.ows -O $HOME/Oasys/hercules_power_transport_sources.ows
RUN cd /opt/install && \
   conda env update -n base --file environment.yml

#### Git puller ####

RUN pip install nbgitpuller
# this used to be needed if running an old version of Jupyter Notebook
# RUN jupyter serverextension enable nbgitpuller --sys-prefix

# this is for testing whether git puller is working when running container locally
RUN jupyter serverextension enable --py nbgitpuller

