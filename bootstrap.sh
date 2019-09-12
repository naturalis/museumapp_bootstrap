#!/bin/bash

chmod 0777 $DOCUMENT_HASHES_PATH
chmod 0777 $IMAGE_SELECTOR_PATH
chmod 0777 $IMAGE_SQUARES_PATH
chmod 0777 $MANAGEMENT_DATA_PATH
chmod 0777 $IMAGE_SQUARED_IMAGES
chmod 0777 $JSON_PREVIEW_PATH
chmod 0777 $JSON_PUBLISH_PATH
chmod 0777 $JSON_LOAD_PATH
chmod 0777 $MESSAGE_QUEUE_PATH
chmod 0777 /data/stubs
chmod 0777 /usr/share/elasticsearch/data

mv /tmp/image_stubs/* /data/stubs/

cd /tmp
php /tmp/bootstrap.php
