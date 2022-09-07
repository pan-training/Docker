FROM jupyter/base-notebook:ubuntu-20.04


USER root

# get McCode debian packages: releases 2.7.1 and 3.1
RUN wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-2.7.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-comps-2.7.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-manuals-2.7.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-suite-python_2.7.1_all.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-matlab-mcplot-2.7.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-perl-cmdline-2.7.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mccodelib-2.7.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mcdisplay-pyqtgraph-2.7.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mcdisplay-webgl-2.7.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mcdoc-2.7.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mcgui-2.7.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mcplot-matplotlib-2.7.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mcplot-pyqtgraph-2.7.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mcplot-svg-2.7.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mcrun-2.7.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-ncrystal-2.7.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mcresplot-2.7.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mcdisplay-mantid-2.7.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-3.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-comps-3.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-manuals-3.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-suite-python-ng_3.1_all.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-matlab-mcplot-3.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-perl-cmdline-3.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mccodelib-3.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mcdisplay-pyqtgraph-3.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mcdisplay-webgl-3.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mcdoc-3.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mcgui-3.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mcplot-matplotlib-3.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mcplot-pyqtgraph-3.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mcrun-3.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-ncrystal-3.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mcresplot-3.1-deb64.deb && \
    wget http://packages.mccode.org/debian/dists/stable/main/binary-amd64/mcstas-tools-python-mcdisplay-mantid-3.1-deb64.deb 

RUN apt-get -y update \
   && apt-get install -y dbus-x11 \
   firefox \
   xfce4 \
   xfce4-panel \
   xfce4-session \
   xfce4-settings \
   xorg \
   xubuntu-icon-theme \
   view3dscene \
   python3-pyqt5 \
   xdg-utils \
   gedit \
   gedit-plugins \
   evince \
   gnuplot \
   octave \
   libopenmpi-dev \
   libnexus1 \
   libnexus-dev \
   git && \
   wget 'https://sourceforge.net/projects/turbovnc/files/2.2.5/turbovnc_2.2.5_amd64.deb/download' -O turbovnc_2.2.5_amd64.deb  && \
   apt-get install -y -q ./*.deb && \
   apt-get remove -y -q light-locker && \
   rm ./turbovnc_2.2.5_amd64.deb && \
   ln -sf /opt/TurboVNC/bin/* /usr/local/bin/ && \
   rm *.deb && \
   apt-get -y autoremove && \
   wget https://raw.githubusercontent.com/McStasMcXtrace/McCode/master/tools/Python/mcgui/viewclasses.py -O /usr/share/mcstas/2.7.1/tools/Python/mcgui/viewclasses.py && \
   wget https://raw.githubusercontent.com/McStasMcXtrace/McCode/master/tools/Python/mcgui/viewclasses.py -O /usr/share/mcstas/3.1/tools/Python/mcgui/viewclasses.py && \
   wget https://raw.githubusercontent.com/McStasMcXtrace/McCode/master/tools/Python/mccodelib/pqtgfrontend.py -O /usr/share/mcstas/2.7.1/tools/Python/mccodelib/pqtgfrontend.py && \
   wget https://raw.githubusercontent.com/McStasMcXtrace/McCode/master/tools/Python/mccodelib/pqtgfrontend.py -O /usr/share/mcstas/3.1/tools/Python/mccodelib/pqtgfrontend.py

ADD . /opt/install
RUN fix-permissions /opt/install
ADD ./install-oasys.sh /install-oasys.sh
RUN chmod +x /install-oasys.sh && /install-oasys.sh && rm /install-oasys.sh
ADD ./oasys/oasys.sh /usr/local/bin/oasys.sh
ADD ./oasys/oasys.desktop /usr/share/applications/oasys.desktop
ADD ./oasys/oasys-icon.xpm /usr/share/pixmaps/oasys-icon.xpm
RUN chmod +x /usr/local/bin/*.sh && chown -R $NB_UID:$NB_GID $HOME && chown -R $NB_UID:$NB_GID /opt/install
USER $NB_USER

RUN cd /opt/install && \
   conda env update -n base --file environment.yml

COPY McStasScript/configuration.yaml  /opt/conda/lib/python3.9/site-packages/mcstasscript/
RUN mkdir $HOME/Oasys && \
   wget https://raw.githubusercontent.com/oasys-esrf-kit/oasys_hercules/main/2022/hercules_coherence_transport.ows -O $HOME/Oasys/hercules_coherence_transport.ows && \
   wget https://raw.githubusercontent.com/oasys-esrf-kit/oasys_hercules/main/2022/hercules_photon_transport.ows -O $HOME/Oasys/hercules_photon_transport.ows && \
   wget https://raw.githubusercontent.com/oasys-esrf-kit/oasys_hercules/main/2022/hercules_power_transport_optical_elements.ows -O $HOME/Oasys/hercules_power_transport_optical_elements.ows && \
   wget https://raw.githubusercontent.com/oasys-esrf-kit/oasys_hercules/main/2022/hercules_power_transport_sources.ows -O $HOME/Oasys/hercules_power_transport_sources.ows && \ 
   python3 -m pip install https://github.com/mretegan/crispy/tarball/main 
   

