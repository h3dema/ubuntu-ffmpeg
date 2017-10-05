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
$ docker run -v /tmp:/videos -w /videos -it ffmpeg
```

# Using ffmpeg

You can use ffmpeg to download a RTSP video for further manipulation.

```bash
$ ffmpeg -i rtsp://my_rtsp_video_server:5554/VIDEO -acodec copy -vcodec copy /videos/teste.mp4
```


For example let's try to convert a mp4 video to yuv.
The most common format is YUV4:2:0 planar 8-bit (YUV420p). 
You can type ffmpeg -pix_fmts to get a list of all available formats.

```bash
$ ffmpeg -y -i teste.mp4 -pix_fmt yuv420p -f yuv4mpegpipe teste.yuv
```
