# Docker image for running SCIPP in a JupyterLab 

Dockerfile for SCIPP only (with Nexus). 

To run and test locally:    
`docker pull movingnorthwards/scipp`    

***Note: This image will be moved from movingnorthwards to a pan-training dockerhub account soon***

`docker run -p 8888:8888 --name scipptest movingnorthwards/scipp` 

A JupyterLab will be launched in your browser. 

### Check out [SCIPP's notebook style guide](https://github.com/scipp/scipp/blob/main/docs/reference/developer/notebook-style-guide.ipynb)
