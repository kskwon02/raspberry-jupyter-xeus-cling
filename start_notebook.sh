#!/bin/bash
source ./config.sh

docker run -it --restart unless-stopped \
    -p $LOCAL_PORT:8888 \
    -v $CONFIG_FILE:/home/jupyter/.jupyter/ \
    -v $NOTEBOOK_FOLDER:/notebook/ \
    $IMAGE_NAME 
    # /bin/bash
