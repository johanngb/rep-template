### Download
curl -L http://github.com/johanngb/rep-template/archive/master.tar.gz | tar --keep-old-files --strip-components=1 -xz

### Build docker
docker build -t pick_a_name -f docker/Dockerfile .

### Run docker
docker run -it --rm -p 127.0.0.1:80:80 pick_a_name

