FROM johanngb/rep-int:latest
COPY --chown=rep:rep . /home/rep
RUN runuser - rep --command='cd /home/rep/docker/build && make'
