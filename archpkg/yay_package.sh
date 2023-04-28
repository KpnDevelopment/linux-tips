#!/bin/bash

# list of packages to install
packages=(
    android-studio
    ganache-bin
    gnome-browser-connector
    iriunwebcam-bin
    libuvc
    logo-ls
    mkinitcpio-openswap
    mongodb-bin
    mongodb-tools-bin
    mongosh-bin
    nvm
    webcamoid
    openssl-1.0
    postman-bin
    python-jarowinkler
    recidia-audio-visualizer
    robo3t-bin
    speed-test
)

# update package database
yay -Sy

# install packages with parallel downloading
yay -S --needed --noconfirm -P 8 "${packages[@]}"
