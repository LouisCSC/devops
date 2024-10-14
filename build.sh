set -ex
#set registry
USERNAME=418272788649.dkr.ecr.ap-northeast-1.amazonaws.com
# image name
IMAGE=cic101-32-ecr-repo
docker build -t $USERNAME/$IMAGE:latest .
version=`cat VERSION`
echo "version: $version"
docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version
docker push $USERNAME/$IMAGE:$version

