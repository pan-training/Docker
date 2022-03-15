# Docker
Dockerfiles for the pan-training e-learning platform. 

The images can be found on [Dockerhub](https://hub.docker.com/u/movingnorthwards).   
***Note these will move soon once pan-training has its own dockerhub account.*** 

All images are based on the [base notebook](https://hub.docker.com/r/jupyter/base-notebook) from docker-stacks.
The Dockerfile for that is [here](https://github.com/jupyter/docker-stacks/tree/master/base-notebook). 

## Images for Jupyter Notebooks

From the base-notebook we build pan-basic upon which all other images for use with jupyter notebooks are then built.    
pan-basic includes nbgitpuller which is then used to clone teacher's github repos into a container running on the e-learning platform. 

## Images for desktop applications 

Images for running GUIs include OASYS and McStasGui. 

Both of these use the [Jupyter desktop server](https://github.com/yuvipanda/jupyter-desktop-server) 
