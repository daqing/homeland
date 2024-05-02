docker:
  docker build --platform linux/amd64 -f Dockerfile.rails7 -t dqpub .

push:
  docker tag dqpub reg.yy1986.com/daqing/dqpub
  docker push reg.yy1986.com/daqing/dqpub
