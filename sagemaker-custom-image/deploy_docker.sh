#Put your AWS Account ID in "xxxxxxxxxxxx"

sudo dockerd
sudo aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin xxxxxxxxxxxx.dkr.ecr.us-east-1.amazonaws.com
sudo docker build -t data-science .
sudo docker tag data-science:latest xxxxxxxxxxxx.dkr.ecr.us-east-1.amazonaws.com/data-science:latest
sudo docker push xxxxxxxxxxxx.dkr.ecr.us-east-1.amazonaws.com/data-science:latest