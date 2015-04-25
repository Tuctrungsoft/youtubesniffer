# **YouTube Sniffer** #

# Redirect to YouTube Sniffer's Wiki Page for more detail:[YouTube Sniffer Wiki Page](http://code.google.com/p/youtubesniffer/wiki/Homepage) #

# **Update: .net version of Grabber released! see here for more details! http://garyngzhongbo.blogspot.com/2012/12/cyoutube-video-grabberyoutube.html** #

# **If you want to download the SVN thrunk of YouTube Sniffer(the source code), please read this tutorial [How to Use TortoiseSVN to Download Sniffer's SVN thrunk?](http://code.google.com/p/youtubesniffer/wiki/HowToUseSvn)** With Video Tutorial! #
## Table Of Content ##


This program was targeted to download the YouTube's video, before this was the _AG YouTube Video Grabber_, but I messed up by the untidy source code, so I decided to rewrite all using VB6.

All of the release of YouTube Video Sniffer will be post on my blog: http://garyngzhongbo.blogspot.com and here will also release the latest version of **source code**.

The latest AG YouTube Video Grabber was here:
http://garyngzhongbo.blogspot.com/2012/05/vb6youtube-video-grabber.html

# **Tutorials** #
I wrote some tutorial for downloading the YouTube video, you can visit this wiki page for more details:http://code.google.com/p/youtubesniffer/wiki/YouTubeVideoDownloadingTutorial

# **Latest Release For Download** #
See here --> **[Latest Release](http://code.google.com/p/youtubesniffer/wiki/LatestRelease)**

## **How?** ##
**What I trying to do was:**

Hook IE's webbrowser's send function, and analyze the send's function buffer for getting the video download link

**I studied how YouTube transfer it's file and what I got was:**

YouTube transfer the video buffer in pieces, in 360p (flv format), one piece of video file was about 1.7MB, when it reach this size, YouTube will regenerate a new link for another 1.7MB buffer for currently playing video file, this will repeat and repeat until the whole video file is watched or downloaded

And by looking through the video's link that YouTube transfer its file, YouTube control which pieces of that video have to be transfer by the parameters **range=xxx-xxx**, so we got a way:

1. Get the video link that YouTube used to transfer the video file

2. Just simply remove the parameter **range** and YouTube will transfer the whole video file to the client, which mean, we are downloading the whole file.

So, I wrote this program to get the video download link, and that's not too easy to do that, every YouTube link has a unique **signature** parameters, which make that download all the format of that video by just getting one of their link is impossible (unless we know the signature's algorithm). But I found another link that name **generate\_204**, it contain all the parameters of the video that the user currently playing, but we too couldn't get the other video format download by the only generate\_204's parameters (troublesome signature parameter!)

There's another way that I know - YouTube will get the video info by using the **get\_video\_info** file, but we can't get all the video that contain copyrighted info (such as some official video, their channel will always have the **VEVO** word, but not most of them was.).

---

# **My Blog** #

<wiki:gadget url="http://google-code-feed-gadget.googlecode.com/svn/trunk/gadget.xml" up\_feeds="http://garyngzhongbo.blogspot.com/feeds/posts/default?redirect=false"  width="780"  height="1000" border="0" up\_showaddbutton="0"/>

---



---

![http://i.creativecommons.org/l/by-nc/2.5/my/88x31.png](http://i.creativecommons.org/l/by-nc/2.5/my/88x31.png)

YouTube Sniffer Project by [Gary Ng](http://garyngzhongbo.blogspot.com/) is licensed under a [Creative Commons Attribution-NonCommercial 2.5 Malaysia License.](http://creativecommons.org/licenses/by-nc/2.5/my/deed.en_US)