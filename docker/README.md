# Files to set up the Docker image

This directory contains the following files:

* startup.sh -- A script that will be run (as root) when the container starts.  If the default is fine, this file can be safely deleted (it is also located at /dockerstartup/startup_default.sh).
* shiny-server.conf -- This can be edited to change the directory used by the shiny server.  The default is the home directory (/home/docker).  If the
default is fine, this file can be safely deleted (it is also located at /dockerstartup/shiny_server_default.conf).
* console_message.txt -- This is the message that is displayed when the container starts.  If the default is fine, this file can be safely deleted (it is also located at /dockerstartup/console_message_default.txt).
* index.md -- A markdown file that is converted to html, and then used as the main web page.  If the default is fine, this file can be safely deleted (it is also located at /dockerstartup/index_default.md).
* Dockerfile -- The dockerfile used to build the image.
* install.rmd -- An R markdown file that is to be run when creating the image.  This file can be used, for example, to install any necessary R packages.


