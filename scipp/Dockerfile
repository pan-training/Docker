FROM movingnorthwards/panbasic 

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
