# **YouTube Video Downloading Tutorial** #
## Table Of Content ##


The most easiest  method is to download a YouTube video downloading software and copy the link to it, then wait for the program to generate or download the video for you. But, you can't see how is it working and how to do that **manually**. So this tutorial is for everyone that interested in **How To Download A YouTube Video Manually**

---

## Video ##

I had made a video before I wrote this tutorial, here’s that video:

<a href='http://www.youtube.com/watch?feature=player_embedded&v=6K0cfBcK6nM' target='_blank'><img src='http://img.youtube.com/vi/6K0cfBcK6nM/0.jpg' width='425' height=344 /></a>

But, this video is not too detail and that's why the exist of this tutorial.

---


## Introduction ##
So, let we start our tutorial! First of all, we need a YouTube video, here I will demo with the video a just listed just now – [Download The YouTube Video Without Any Program](http://www.youtube.com/watch?v=6K0cfBcK6nM) and some basic information about how to download YouTube video.

### How to do It? ###
There’s many methods to get the video download link:-

  1. By using the network sniffer(Google Chrome built-in this feature!), find out what’s the video link currently playing and remove the **range** parameters, then we can download the video.
  1. By finding the **generate\_204** request in the packets by using the network sniffer too, the generate\_204 request will also consist the parameters for currently playing video.
  1. By requesting the video information with **get\_video\_info**, what I currenty knew was, just set the parameter  **video\_id=XXX**, YouTube will give us many of that video information, but not all video's information can be retrieved by this methods.
  1. Here’s the most complicated method - analyze that YouTube video’s webpage,  and find the video download link, but this method was always get the accurate info as all the information we want was in the webpage!

Good news is, I will show it at here one by one!

Before I forgot,  all the YouTube video download link always consist the word **videoplayback**, so when we found Before I forgot, all the YouTube video download link always consist the word **videoplayback**, so when we found the request, and we search for the videoplayback word, then we can download the video!

---

### Tools ###
And also, all the link was encoded using something that called **URLEncoder**, don’t worry it can be decoded! Here I found some tools for decode an encoded URL:  [http://urlendecoder.tk](http://urlendecoder.tk/)

I wrote some simple tool for this series of tutorial: [YouTube Sniffer Tools (With source code, written in VB6)](http://dl.dropbox.com/u/43619472/OtherSoft/YouTubeSniffer_src_bin.zip)

**Function**

> ~~`# URL Decoder with two modes:-`~~
> ~~`* UTF8 Decode mode - _For decoding the URL that contains Unicode characters, NOT all character can be displayed by the program (such as Korean)_`~~
> ~~`* ASCII Decode mode - _For decoding the URL that only contains ASCII_`~~
  1. URL Decoder in UTF8 Mode
  1. get\_video\_info
  1. split video download link (two mode)

---


## Lists Of Tutorials ##
### YouTube Video Downloading Tutorial - 1. By Using The Network Sniffer ###
-->**[YouTube? Video Downloading Tutorial - 1. By Using The Network Sniffer](http://code.google.com/p/youtubesniffer/wiki/Tut1UsingNetworkSniffer)**

Download the YouTube video by Google Chrome's built-in function.

_Written by GaryNg at 14/9/2012_

---

### YouTube Video Downloading Tutorial - 2.By finding the generate\_204 request ###
-->**[YouTube Video Downloading Tutorial - 2.By finding the generate\_204 request](http://code.google.com/p/youtubesniffer/wiki/Tut2ByGenerate204)**

Download the YouTube video by finding the generate\_204 request with Google Chrome

_Written by GaryNg at 14/9/2012_

---

### YouTube Video Downloading Tutorial - 3. By requesting the video information with get\_video\_info ###
-->**[YouTube Video Downloading Tutorial - 3. By requesting the video information with get\_video\_info](http://code.google.com/p/youtubesniffer/wiki/Tut3ByGetVideoInfo)**

Download the YouTube video in other way!

_Written by GaryNg at 15/9/2012_

---

### YouTube Video Donwloading Tutorial - 4. By Analyzing The Video's Webpage Manually ###
-->[YouTube Video Donwloading Tutorial - 4. By Analyzing The Video's Webpage Manually](http://code.google.com/p/youtubesniffer/wiki/Tut4ByAnalyzingTheWebpage)

Download the YouTube video by analyzing the video's webpage manually!

_Written by GaryNg at 15/9/2012_

---



---

![http://i.creativecommons.org/l/by-nc/2.5/my/88x31.png](http://i.creativecommons.org/l/by-nc/2.5/my/88x31.png)

YouTube Sniffer Project by [Gary Ng](http://garyngzhongbo.blogspot.com/) is licensed under a [Creative Commons Attribution-NonCommercial 2.5 Malaysia License.](http://creativecommons.org/licenses/by-nc/2.5/my/deed.en_US)