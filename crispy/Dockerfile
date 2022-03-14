FROM panbasic

USER $NB_USER

# Add crispy 
RUN pip install git+https://github.com/mretegan/crispy 

# Clean up - Remove .cache  directory
RUN rm -r "/home/$NB_USER/.cache"

USER $NB_UID

WORKDIR $HOME
