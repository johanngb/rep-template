# Use johanngb/rep-int:latest as the base image
# You may want to change "latest" to a specific version, e.g. "2021",
# so that it's clear which version is used.
FROM johanngb/rep-int:latest  

# Copy your project's files into the docker image
# The files are added to the home directory of user "rep"
COPY --chown=rep:rep . /home/rep 

# Run the scripts in the build directory 
# Used to install R packages, etc.
RUN su - rep -c 'cd /home/rep/docker/build && make' 

# You may want to actually run your analysis as well. 
# Then the analysis output is included in the image.
# The exact commands to use depend on how you run your analysis.
# For example, if you have a makefile that runs all your analyses, 
# you might run:
# RUN su - rep -c 'cd /home/rep && make'
