#!/bin/sh

rm ./releases/doom-n-quake.zip
cd ./games
zip -r ../releases/doom-n-quake.zip . -9 -x '**/*.dll'
