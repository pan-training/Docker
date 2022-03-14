FROM jupyter/base-notebook

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
    libssl1.1 \
    libssl-dev \
    vim \
    libglib2.0-0 && \ 
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
      jupyter_contrib_nbextensions \
      matplotlib-base \
      nodejs \
      python-confluent-kafka \
      pythreejs \ 
      voila \
      bqplot \
      ipyvolume \
      ipympl \
      scikit-learn \
      nglview \
      silx && \
    conda install -c intel mkl && \
    conda clean -afy

RUN conda update -n base conda --yes




# Git puller 
RUN pip install nbgitpuller 

# this used to be needed if running an old version of Jupyter Notebook 
# RUN jupyter serverextension enable nbgitpuller --sys-prefix

# this is for testing whether git puller is working when running container locally     
RUN jupyter serverextension enable --py nbgitpuller  

# Voila 
RUN jupyter serverextension enable voila --sys-prefix

# Nbextensions 
RUN conda install -c conda-forge jupyter_contrib_nbextensions 

# Enable the Nbextensions. Annoyingly you have to specific one nbextension/package at a time 
RUN jupyter nbextension enable autosavetime/main && \
    jupyter nbextension enable execute_time/ExecuteTime && \
    jupyter nbextension enable spellchecker/main && \
    jupyter nbextension enable toc2/main && \
    jupyter nbextension enable contrib_nbextensions_help_item/main && \
    jupyter nbextension enable --py --sys-prefix widgetsnbextension


# Clean up - Remove .cache  directory
RUN rm -r "/home/$NB_USER/.cache"

USER $NB_UID

WORKDIR $HOME
