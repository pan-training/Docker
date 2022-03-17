# Running SasView in a Jupyter Desktop

Docker image for [SasView](https://www.sasview.org/).   

Tool forked from [yuvipanda/jupyter-desktop-server](https://github.com/yuvipanda/jupyter-desktop-server).

To run and test locally:    
`docker pull movingnorthwards/sasview`    

***Note: This image will be moved from movingnorthwards to a pan-training dockerhub account soon***

`docker run -p 8888:8888 --name sasviewtest movingnorthwards/sasview` 

A JupyterLab will be launched in your browser.    
Click on the desktop icon and a second browser tab will that looks like a basic linux desktop.    
In a terminal type `sasview` to start SasView. 
