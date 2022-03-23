FROM stefanovdmsc/panbasic

USER root

SHELL [ "/bin/bash", "--login", "-c" ]

RUN apt-get update && apt-get install -y \
    gfortran \
    libgsl0-dev \
    libbz2-dev \
    hdf5-tools \
    libfftw3-dev \
    libgsl-dev \
    cmake && \
    apt-get -y upgrade


USER $NB_USER

RUN conda config --set channel_priority false

RUN conda install --yes \
      markdown \
      py3nvml \
      biopython \
      cython \
      dill \
      mpi4py \
      openpmd-api \
      periodictable \
      pint \
      pyFAI \
      numba \
      xraydb && \
    conda clean -afy

RUN conda update -n base conda --yes


##### Installing SimEx #####

# first add ocelot
RUN git clone https://github.com/ocelot-collab/ocelot.git -b dev_gen --depth 1
RUN cd ocelot && \
    pip install .


RUN git clone https://github.com/PaNOSC-ViNYL/SimEx -b master --depth 1
RUN cd SimEx && \
    mkdir build && \
    cd build && \
    cmake -DCMAKE_INSTALL_PREFIX=/opt/conda \
          -DUSE_wpg=ON \
          -DUSE_SingFELPhotonDiffractor=ON \
          -DUSE_XMDYNPhotonMatterInteractor=ON \
          -DUSE_S2EReconstruction_DM=ON \
          -DUSE_S2EReconstruction_EMC=ON \
          .. && \
    make -j8 && \
    make install && \
    cd ../Sources/python && \
    pip install .


USER $NB_USER
WORKDIR $HOME
