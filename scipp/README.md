***You can test this specific branch by pulling movingnorthwards/scipp***  
It is still missing mantid due to python version issue and may have an issue with the version of ipykernel.    
Unlike main branch this has scippneutron and ess-streaming-data-types


# Docker image for running SCIPP in a JupyterLab 

Dockerfile for SCIPP only (with Nexus).

To run and test locally:    
`docker pull stefanovdmsc/scipp`

***Note: This image will be moved from stefanovdmsc to a pan-training dockerhub account soon***

`docker run -p 8888:8888 --name scipptest stefanovdmsc/scipp`

A JupyterLab will be launched in your browser. 

### Check out [SCIPP's notebook style guide](https://github.com/scipp/scipp/blob/main/docs/reference/developer/notebook-style-guide.ipynb)
