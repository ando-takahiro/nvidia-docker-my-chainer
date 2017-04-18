This nvidia docker image is my personal testbed for [chainer](https://github.com/pfnet/chainer) & [chainerrl](https://github.com/pfnet/chainerrl).  I hope this would help somebody.

How to build this image
====

- checkout this repo
- cd $(THIS_REPO)
- `sudo docker build -t my-chainer .`

How to use this image
====

- cd $(YOUR_PROJECT)
- `sudo nvidia-docker run -v `pwd`:/root/app -it my-chainer /bin/bash`
  * Now, You are in the container
- cd /root/app
  * You can see $(YOUR_PROJECT)

For example, if you want to run an example that has `example.py`, first you need to `cd` there, then run `nvidia-docker`, then run `python /root/app/example.py`.

Notes
===

This image does not support display, so you can not `render` by `OpenGL`.
