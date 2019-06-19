#!/bin/sh
image=$1

if [ "$image" == "" ]
then
    echo "Usage: $0 <image-name>"
    exit 1
fi

src_datadir="/absolute/path/to/training/data"
dst_datadir="/opt/ml/input/data/training"

command="docker run --rm -v $(pwd)/Models:/opt/program -v $(pwd)/test_dir:/opt/ml -v \"${src_datadir}\":\"${dst_datadir}\" -p 8080:8080 -it ${image} serve"

eval ${command}
