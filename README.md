Python container for some Data Science education
=============

This is a python container for playing with sets, map/reduce, and such.

It is also ready for X11 forwarding for plotting with pyplot

To use X11, the following seemed to work for me (YMMV)

* I am using Window 10 locally, a Linux VM (Ubuntu 16.04)
* On my Windows machine I have Cygwin/xserver installed
* From a Cygwin shell run: 
*    startxwin &
*    export DISPLAY=:0:0
*    ssh -XY <user@myLinuxVM>
*    docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" nelsd/data-py bash

From here, if you run a python file using pyplot, it will use X11 to forward that plot to your windows machine
It will also forward any other X11 thing, so have fun with xeyes!
