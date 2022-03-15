#### Sasview ####
# Currently just random commands

FROM panbasic

USER root
RUN wget https://github.com/SasView/sasview/releases/download/v5.0.4/SasView-5.0.4-Linux.tar.gz && \
    tar -xvf SasView-5.0.4-Linux.tar.gz --directory /opt/pylib/


USER $NB_USER
RUN pip install \
    sasmodels \
    bumps \
    lxml \
    periodictable \
    jupytext

WORKDIR $HOME
