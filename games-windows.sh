#!/bin/sh

rm ./releases/doom-n-quake.windows.zip
rm -r ./.windows

mkdir -p ./.windows/doom-n-quake
cp -r ./games-windows/* ./.windows/doom-n-quake
mkdir ./.windows/doom-n-quake/nfs2se/NFSIISE
cp -r ./games/.nfs2se/* ./.windows/doom-n-quake/nfs2se/NFSIISE
mkdir ./.windows/doom-n-quake/quake3/ioquake3
cp -r ./games/.q3a/* ./.windows/doom-n-quake/quake3/ioquake3
mkdir ./.windows/doom-n-quake/quake1/quakespasm
cp -r ./games/.quakespasm/* ./.windows/doom-n-quake/quake1/quakespasm
mkdir ./.windows/doom-n-quake/quake2/yquake2
cp -r ./games/.yq2/* ./.windows/doom-n-quake/quake2/yquake2
mkdir ./.windows/doom-n-quake/rtcw/realrtcw
cp -r ./games/.realrtcw/* ./.windows/doom-n-quake/rtcw/realrtcw

cp -r ./games/.config/nblood ./.windows/doom-n-quake/blood
cp -r ./games/.config/gzdoom ./.windows/doom-n-quake/doom
cp -r ./games/.config/eduke32 ./.windows/doom-n-quake/duke3d
cp -r ./games/.config/ecwolf ./.windows/doom-n-quake/wolf3d

cd ./.windows
zip -r ../releases/doom-n-quake.windows.zip . -9 -x '**/*.so'
