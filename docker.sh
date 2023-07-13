
docker build . -f dockerfile  -t image-name --build-arg AWS_ACCESS_KEY_ID=asdf1234 --build-arg AWS_SECRET_ACCESS_KEY=asdf1234  --build-arg AWS_REGION=us-east-1

docker run -it image-name  /bin/bash

#save image to a tar
docker save -o output.tar  image-name:image-tag

#load image from a tar
docker load -i output.tar