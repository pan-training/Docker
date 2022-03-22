# Docker image for running Crispy in a JupyterLab 

Dockerfile for [Crispy](https://www.esrf.fr/computing/scientific/crispy/)

To run and test locally:    
`docker pull stefanovdmsc/crispy`

***Note: This image will be moved from stefanovdmsc to a pan-training dockerhub account soon***

`docker run -p 8888:8888 --name crispytest stefanovdmsc/crispy`

A JupyterLab will be launched in your browser. 
