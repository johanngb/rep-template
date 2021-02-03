# Files to set up the Docker image

This directory contains the Dockerfile used to create the image as well as two subdirectories:

* Files in "build" are used to set up the docker image when it is being built.  It includes:
    * makefile -- Any commands to be run to set up the image can be placed in here.  The default is a single command to render install.Rmd (see below).
    * install.Rmd -- An R markdown file that can be used to help setup the image.  This file can be used, for example, to install any necessary R packages.  By default it installs the R packages in "required_R_packages" (see below).
    * required_R_packages.txt -- a text file listing R packages that need to be installed.  This file is read by install.Rmd, which installs the packages.
* Files in "startup" are used to configure the docker container when it starts up. 
    * startup.sh -- A script that will be run (as root) when the container starts.  By default it starts the servers and prints a message to the console.  If the default is fine, this file can be safely deleted (it is also located at /startup/startup_default.sh).
    * console_message.txt -- This is the message that is displayed when the container starts.  If the default is fine, this file can be safely deleted (it is also located at /startup/console_message_default.txt).
    * index.md -- A markdown file that is converted to html, and then used as the main web page.  If the default is fine, this file can be safely deleted (it is also located at /startup/index_default.md). 



