set -ex
#set registry
USERNAME=204065533127.dkr.ecr.ap-northeast-1.amazonaws.com
# image name
IMAGE=cc102_ecr_test
IMAGE_TAG="$USERNAME/$IMAGE:latest"
docker-compose up -d
docker images
#docker build -t $USERNAME/$IMAGE:latest .
version=`cat VERSION`
echo "version: $version"
version1=`cat VERSION1`
echo "version: $version1"
#version2=`cat VERSION2`
#echo "version: $version2"
#version3=`cat VERSION3`
#echo "version: $version3"
docker tag asoo571314/jupyter-notebook:1.0 $USERNAME/$IMAGE:$version
docker tag mysql:5.7 $USERNAME/$IMAGE:$version1
#docker tag chatbotdev_db:latest $USERNAME/$IMAGE:$version2
#docker tag mysql:5.7 $USERNAME/$IMAGE:$version3
docker push $USERNAME/$IMAGE:$version
docker push $USERNAME/$IMAGE:$version1
#docker push $USERNAME/$IMAGE:$version2
#docker push $USERNAME/$IMAGE:$version3
