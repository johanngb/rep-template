FROM johanngb/rep-int:latest
COPY --chown=docker:docker . /home/docker
RUN runuser - docker --command='cd /home/docker/docker && R -e "rmarkdown::render(\"install.Rmd\")"'
