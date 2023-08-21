# ESS DMSC Summerschool container

Container with software packages for use in the course https://indico.esss.lu.se/event/3267/

([JupyterLab](https://jupyter.org), [scipp](https://scipp.github.io),
[NeXus format](https://www.nexusformat.org), [McStas](https://mcstas.org) and more)

**Currrent revision: 1.5** (built 20230821)

This Docker recipe can be used to build the supporting container, e.g.

Build via e.g.
```
podman build . --format=docker -t docker.io/mccode/dmsc-summerschool:1.5
```
Will be (manually) uploaded to DockerHub by Peter on changes.

Run via e.g.
```
podman run -p8888:8888 docker.io/mccode/dmsc-summerschool:1.5
```

## Credits

This tool is based on code from <https://github.com/jupyterhub/jupyter-remote-desktop-proxy>
It defines a Docker container which includes websockify, tightvnc
server, and novnc plus software specific to the above-mentioned
course.ls

