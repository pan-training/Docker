FROM stefanovdmsc/panbasic

#### Nexus ####

USER root
SHELL [ "/bin/bash", "--login", "-c" ]
RUN apt-get update && apt-get install -y libnexus1 libnexus-dev

########################
      
#### SCIPP ####

USER $NB_USER
RUN conda install --yes -c scipp scipp scippneutron
# RUN conda install --yes -c mantid mantid
RUN conda install --yes -c ess-dmsc ess-streaming-data-types 

# ISSUES WITH MANTID 

# Specifications:
#   - mantid -> python[version='>=3.8,<3.9.0a0']
# Your python: python==3.9.10

# CURRENT ipykernel version is 6.9.2 - this may be an issue according to yml file. 

# Most dependencies are already in panbasic - list taken from scippneutron.yml in this folder. 
# scipy is already in jupyter/base-notebook 
# Not that using conda activate with docker is not always easy
# https://pythonspeed.com/articles/activate-conda-dockerfile/

########################   
       
#### Additional ####

RUN conda install --yes \
     pytest \
     pytables \
     openpyxl \
     xlrd && \
     conda clean -afy

########################

WORKDIR $HOME
