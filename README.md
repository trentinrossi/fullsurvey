# Build the image
docker build . -t rodrigotrentinrossi/nginx-gateway:latest

# Setup and up the environment
./run.setup.sh