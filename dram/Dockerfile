FROM movingnorthwards/panbasic 

#### ASE and GPAW ####

USER root 
# Requirements for GPAW
RUN apt-get update && apt-get install -y \
     libxc-dev \
     libblas-dev \
     liblapack-dev

USER $NB_USER
RUN pip install ase gpaw

########################

#### McStas and McXtrace ####

USER root
SHELL [ "/bin/bash", "--login", "-c" ]

RUN curl http://packages.mccode.org/debian/mccode.list > /etc/apt/sources.list.d/mccode.list

RUN apt-get update && apt-get install -y \
    coreutils \
    emacs \
    fonts-liberation \
    libgl1-mesa-glx \
    libopenmpi-dev \
    libosmesa6 \
    mcstas-suite-python \
    mcstas-suite-perl \
    mcxtrace-suite-python \
    mesa-utils \
    openmpi-bin \
    xbase-clients \
    xdg-utils

#### McStas Script ####

USER $NB_USER
RUN pip install mcstasscript

USER root
COPY configuration_mccode.yaml  /opt/conda/lib/python3.8/site-packages/mcstasscript/configuration.yaml

########################

#### Nexus ####

USER root
SHELL [ "/bin/bash", "--login", "-c" ]
RUN apt-get update && apt-get install -y libnexus1 libnexus-dev

########################
      
#### SCIPP ####

USER $NB_USER
RUN conda install -c conda-forge -c scipp scipp

########################   
       
#### Updates ####

RUN conda install --yes \
     pytest \
     pytables \
     openpyxl \
     xlrd && \
     conda clean -afy

########################

# Clean up - Remove .cache  directory
RUN rm -r "/home/$NB_USER/.cache"

USER $NB_USER
WORKDIR $HOME
