# Docker image for running notebooks in a JupyterLab with DRAM software

Dockerfile for the DRAM (Data Reducation And Modelling) group at the ESS. 

Contains:
- SCIPP 
- McStas
- McStas Script
- McXtrace

To run and test locally:    
`docker pull stefanovdmsc/dram`

***Note: This image will be moved from stefanovdmsc to a pan-training dockerhub account soon***

`docker run -p 8888:8888 --name dramtest stefanovdmsc/dram`

A JupyterLab will be launched in your browser. 

