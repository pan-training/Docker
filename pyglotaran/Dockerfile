FROM stefanovdmsc/panbasic
USER $NB_USER

# Install both pyglotaran and pyglotaran-extras 
RUN pip install pyglotaran pyglotaran-extras


# Clean up - Remove .cache  directory
RUN rm -r "/home/$NB_USER/.cache"

USER $NB_UID

WORKDIR $HOME
