FROM stefanovdmsc/panbasic
USER $NB_USER

# Copy requirements file with pinned pyglotaran dependencies
COPY ./requirements.txt requirements.txt

# Install both pyglotaran and pyglotaran-extras 
RUN pip install --no-cache-dir -r requirements.txt \
    && rm requirements.txt


# Clean up - Remove .cache  directory
RUN rm -r "/home/$NB_USER/.cache"

USER $NB_UID

WORKDIR $HOME
