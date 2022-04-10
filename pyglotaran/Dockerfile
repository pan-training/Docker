FROM stefanovdmsc/panbasic
USER $NB_USER


RUN mamba install --quiet --yes \
    'jupyterlab-spellchecker' \
    'jupyterlab_code_formatter' \
    'isort' \
    'black' \
    'jupyterlab-drawio' \
    'jupyterlab-autosave-on-focus-change' \
    'jupyterlab-system-monitor' \
    'jupyterlab-unfold' \
    && mamba clean --all -f -y

# Copy requirements file with pinned pyglotaran dependencies
COPY ./requirements.txt requirements.txt

# Install both pyglotaran and pyglotaran-extras 
RUN pip install --no-cache-dir -r requirements.txt \
    && rm requirements.txt


# Clean up - Remove .cache  directory
RUN rm -r "/home/$NB_USER/.cache"

USER $NB_UID

WORKDIR $HOME
