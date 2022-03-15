# Docker image for running Crispy in a JupyterLab 

Dockerfile for [Crispy](https://www.esrf.fr/computing/scientific/crispy/)

To run and test locally:    
`docker pull movingnorthwards/crispy`    

***Note: This image will be moved from movingnorthwards to a pan-training dockerhub account soon***

`docker run -p 8888:8888 --name crispytest movingnorthwards/crispy` 

A JupyterLab will be launched in your browser. 
