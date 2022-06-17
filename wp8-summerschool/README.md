# PaNOSC WP8 summerschool Docker from Jupyter Desktop Server

[McStas](https://mcstas.org/) neutron instrument- and experiment simulations
[OASYS](https://www.aps.anl.gov/Science/Scientific-Software/OASYS) X-ray optics and beam-line simulations
[Crispy](https://www.esrf.fr/computing/scientific/crispy/) core-level spectra calculator
[ASE](https://wiki.fysik.dtu.dk/ase/) Atomic Simulation Environment

## Usage (work in progress)

The [McStas](http://mcstas.org/) software is available from the __Applications__ menu in group __Education__.

Both the legacy version 2.x and the 'next-generation' 3.x (with revised grammar, compilation and performance effiiency) are available. You are welcome to use MPI clustering to distribute the computations over all CPU cores. There is however no GPU support for the 3.x release.

## Credits

This tool is forked from <https://github.com/yuvipanda/jupyter-desktop-server>.

Can be run e.g. from dockerhub via
```
docker run -p 8888:8888 -v $HOME/panosc-docker:/home/jovyan/panosc-docker docker.io/mccode/panosc-summerschool-0.1:1.0
```
