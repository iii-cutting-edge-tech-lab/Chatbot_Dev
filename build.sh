set -ex
#set registry
USERNAME=204065533127.dkr.ecr.ap-northeast-1.amazonaws.com
IAMGE1=api
IAMGE2=mysql


docker build -t $USERNAME/$IAMGE1:latest -f dockerfile/dockerfile-api dockerfile/
docker build -t $USERNAME/$IAMGE2:latest -f dockerfile/dockerfile-mysql dockerfile/



api_ver=`cat api_ver`
echo "redis_ver: $api_ver"
docker tag $USERNAME/$IAMGE1:latest $USERNAME/$IAMGE1:$api_ver
mysql_ver=`cat mysql_ver`
echo "mysql_ver: $mysql_ver"
docker tag $USERNAME/$IAMGE2:latest $USERNAME/$IAMGE2:$mysql_ver

docker push $USERNAME/$IAMGE1:$api_ver
docker push $USERNAME/$IAMGE2:$mysql_ver
