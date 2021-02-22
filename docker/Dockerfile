# Use johanngb/rep-int:2021v1 as the base image
# You may want to change the version to
# something other than "2021v1".  See  
# https://hub.docker.com/r/johanngb/rep-int
# for notes on specific versions.
FROM johanngb/rep-int:2021v1

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
