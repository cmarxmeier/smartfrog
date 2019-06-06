#!/bin/bash
for f in *.264
do
        echo "conerting $f to $f.264"
        ffmpeg -i $f $f.mp4
done
