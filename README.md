## Making a Docker image

Below is a very brief summary (nearly a TL;DR) on how to turn your project into a Docker image, using this git repo as a template and the [johanngb/rep-int](https://hub.docker.com/r/johanngb/rep-int) image as a base image.

### Download

The command below will download the contents of this repository, but will not overwrite any existing files.  You can therefore use it to add these files to an existing project, and then delete whatever you don't want.

    curl -L http://github.com/johanngb/rep-template/archive/master.tar.gz | tar --skip-old-files --strip-components=1 -xz

### Build docker image

After looking in the `docker` directory and making any changes you might want, you can use the command below to build a docker image.  Note that if you have a reasonably simple project, you might not need to make any changes in the `docker` directory at all.  Make sure to run the command below in the main project directory (and not, e.g., in the `docker` sub-directory).  You will need to pick a name for your image; here we use `myimage`.

    docker build -t myimage -f docker/Dockerfile .

### Run docker

If the docker builds correctly, you can run it with:

    docker run -it --rm -p 127.0.0.1:80:80 myimage

### Next steps

* Once you have made sure all your analyses run correctly, you might want to edit the Dockerfile so that the full analysis is run when the image is built (e.g., uncomment the last `RUN` command in the Dockerfile), and then re-build the image.  This way, the analysis output will be included as part of the image, and will therefore be available immediately when the image is run (instead of needing to re-run the analysis and waiting for it to complete).

* Once you rebuild the image, run it again using the command above, and check that all the analyses have completed correctly, you will likely want to extract the output.  There are various ways to do this.  Here are two:

  * Option 1:  Run these command in an empty directory where you want to extract the output.
  
        docker run --name temp myimage
        docker cp temp:/home/rep/. .
        docker rm temp
        
  * Option 2:  If you use the makefile included in this git repo (and, in particular, have the `archive` rule), you can
  
        docker run -it --rm -p 127.0.0.1:80:80 myimage
        
    Then, once inside the container
    
        make archive
    
    Then "download" the archive file by pointing your browser to
    
        http://localhost/browse/archive.tar.bz2
      
* You will likely also want to save your entire image as a file and archive it somewhere (e.g., in cloud storage, or a back-up hard drive).  For this, use

      docker save myimage | gzip > myimage.tar.gz
      
* Other useful commands to clean up space on your computer:

  * `docker image ls` to see images
  * `docker image rm <name>` to remove image `<name>`
  * `docker container ls -a` to see containers (including stopped ones)
  * `docker container rm <name>` to remove container `<name>`
  * `docker system prune` to clean up no-longer-needed files
  
      
