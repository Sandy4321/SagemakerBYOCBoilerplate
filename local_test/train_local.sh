#!/bin/sh
image=$1

if [ "$image" == "" ]
then
    echo "Usage: $0 <image-name>"
    exit 1
fi

mkdir -p test_dir/output

src_datadir="/absolute/path/to/traing/data"
dst_datadir="/opt/ml/input/data/training"

command="docker run --rm \
        -v $(pwd)/scripts:/opt/program \
        -v $(pwd)/test_dir:/opt/ml \
        -v \"${src_datadir}\":\"${dst_datadir}\" \
        -it ${image} train"

eval ${command}
