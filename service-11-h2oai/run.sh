sudo echo 0 > /proc/sys/vm/overcommit_memory

wget https://s3.amazonaws.com/artifacts.h2o.ai/releases/ai/h2o/dai/rel-1.8.1-146/x86_64-centos7/dai-docker-centos7-x86_64-1.8.1.1-10.0.tar.gz

docker load < dai-docker-centos7-x86_64-1.8.1.1-10.0.tar.gz 
# Set up the data, log, license, and tmp directories on the host machine (within the new directory)
mkdir data
mkdir log
mkdir license
mkdir tmp

# Start the Driverless AI Docker image
docker run \
    --pid=host \
    --init \
    --rm \
    --shm-size=256m \
    -u `id -u`:`id -g` \
    -p 80:12345 \
    -v `pwd`/data:/data \
    -v `pwd`/log:/log \
    -v `pwd`/license:/license \
    -v `pwd`/tmp:/tmp \
    h2oai/dai-centos7-x86_64:1.8.1.1-cuda10.0.146
