FROM jupyter/base-notebook:ubuntu-20.04

USER root
SHELL [ "/bin/bash", "--login", "-c" ]

RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    apt-utils  \
    build-essential \
    git \
    wget \
    tzdata \
    vim && \
    apt-get -y upgrade 
    
RUN DEBIAN_FRONTEND=noninteractive apt-get --yes install keyboard-configuration       




USER $NB_USER
RUN conda install --yes \
      -c conda-forge \
      h5py \
      ipympl \
      ipython \
      ipywidgets \
      jupyterlab \
      jupyterlab_widgets \
      matplotlib-base \
      nodejs \
      pythreejs \ 
      voila \
      bqplot \
      ipyvolume \
      scikit-learn \
      nglview && \
    conda install -c intel mkl && \
    conda clean -afy

RUN conda update -n base conda --yes && python -m ensurepip --upgrade && pip3 install --upgrade pip
RUN jupyter serverextension enable voila --sys-prefix




#### Git puller ####
 
RUN pip3 install nbgitpuller confluent-kafka silx jupyter-contrib-nbextensions
# this used to be needed if running an old version of Jupyter Notebook 
# RUN jupyter serverextension enable nbgitpuller --sys-prefix

# this is for testing whether git puller is working when running container locally     
RUN jupyter serverextension enable --py nbgitpuller  




# Enable the Nbextensions. Annoyingly you have to specify one nbextension/package at a time 
RUN jupyter nbextension enable autosavetime/main && \
    jupyter nbextension enable execute_time/ExecuteTime && \
    jupyter nbextension enable spellchecker/main && \
    jupyter nbextension enable toc2/main && \
    jupyter nbextension enable contrib_nbextensions_help_item/main && \
    jupyter nbextension enable --py --sys-prefix widgetsnbextension




# Clean up - Remove .cache  directory
RUN rm -r "/home/$NB_USER/.cache"

USER $NB_USER
WORKDIR $HOME
