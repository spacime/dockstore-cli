## Introduction
Dockstore command line interface provides us a convenient way to manage our tools. It will also check the OS's environment so as to install and run dockstore-cli correctly.

## How to use
### Git the repo
```
git clone git@github.com:spacime/dockstore-cli.git
```
### Build dockstore image
```
sudo docker build -t <image-name> .
```
### Run the image to check the complete
```
sudo dockstore run dockstorecli
```
