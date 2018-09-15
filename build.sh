set -ex
#set registry
USERNAME=204065533127.dkr.ecr.ap-northeast-1.amazonaws.com
# image name
IMAGE=cc102_ecr_test
IMAGE_TAG="$USERNAME/$IMAGE:latest"
#docker-compose up -d
#docker images
docker build -t $USERNAME/$IMAGE:latest .
version=`cat VERSION`
echo "version: $version"
#version1=`cat VERSION1`
#echo "version: $version1"
docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version
#docker tag jupyter-tutorial $USERNAME/$IMAGE:$version1
docker push $USERNAME/$IMAGE:$version
#docker push $USERNAME/$IMAGE:$version1

