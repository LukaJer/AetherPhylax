#!/usr/bin/env fish
rsync -av --exclude=".*/" --exclude="README.md" /home/luka/Documents/PlatformIO/Projects/AetherPhylax/ /home/luka/AetherPhylax/Software
mv /home/luka/AetherPhylax/Software/src/LoRaMini.cpp //home/luka/AetherPhylax/Software/src/AetherPhylax.cpp



