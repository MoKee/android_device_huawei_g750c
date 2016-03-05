#!/bin/sh

VENDOR=huawei
DEVICE=g750c

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in $(cat proprietary-blobs.txt | grep -v '^#' | grep -v '^$'); do
    mkdir -p $BASE/$(dirname $FILE)
    adb pull /system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
