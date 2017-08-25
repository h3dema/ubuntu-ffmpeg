# ubuntu-ffmpeg
Dockerfile for video/audio conversion on Ubuntu using ffmeg

Use the following command to build the docker image in your computer:

```bash
$ docker build -t ffmpeg github.com/h3dema/ubuntu-ffmpeg
```

Now you can run the image using docker run, as shown below.
```bash
$ docker run -it ffmpeg
```

Maybe you wish to share a local directory (in your computer) to a virtual directory inside the container.
You can do this with the -v parameter. In the following command we share the /tmp directory in the computer as /videos directory in the container:
```bash
$ docker run -v /tmp:/videos -it ffmpeg
```

For example let's try to convert a mp4 video to yuv.
The most common format is YUV4:2:0 planar 8-bit (YUV420p). 
You can type ffmpeg -pix_fmts to get a list of all available formats.
There are some information you should have about your original video (i.e, video.mp4):
* The frame rate (e.g. 31 fps)
* The format or frame size (e.g. 560 x 320)
Place the former in the -r parameter and the later in the -s parameter.

```bash
$ ffmpeg -i input.mp4 -f rawvideo -vcodec rawvideo -pix_fmt yuv420p -s 560 x 320 -r 31 rawvideo.yuv
```
