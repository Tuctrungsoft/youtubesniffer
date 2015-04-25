# **YouTube Video Downloading Tutorial - 2.By finding the generate\_204 request** #
## Table Of Contents ##


---


## Introduction ##
This is a short tutorial because the ways to do that was likely same as what we done in tutorial 1 - [YouTube Video Downloading Tutorial - 1. By Using The Network Sniffer](http://code.google.com/p/youtubesniffer/wiki/Tut1UsingNetworkSniffer), the different is we just have to get the **generate\_204** request then we can download the video.

**Which methods I have to choice? In tutorial 1 or this tutorial?**

It's depends on you. The browser will request the **videoplayback** request when the video started to play, but the browser will always request the **generate\_204** when video page load (note that **the video page load**, it request it although the user did't play that video!)

So, when you have a slow connection, or you don't want to play that video, you can try the method that I shown in this tutorial, if you don't bother about your network quota or you have a high speed connection, you can try the method that I shown in [tutorial 1](http://code.google.com/p/youtubesniffer/wiki/Tut1UsingNetworkSniffer). By the way, I more prefer to use the method in tutorial 1 because it's more simple!


---


I assume that you had look at the [tutorial 1](http://code.google.com/p/youtubesniffer/wiki/Tut1UsingNetworkSniffer), if haven't, go through tutorial 1 first, this will be good for you to understand the follow up tutorial.

## Start ##

Open your Google Chrome (I prefer to use Google Chrome because it built-in the network request viwer, also known as the network packets sniffer, or viewer.), open a new tab and press F12, then select the Network tab, navigate to the video link you want to download (I will use my video [Download The YouTube Video Without Any Program](http://www.youtube.com/watch?v=6K0cfBcK6nM) as demonstration ), find the **generate\_204** request in the name columns, copy the link!

![http://2.bp.blogspot.com/-lOllM-mcfMA/UFM4DSZcrUI/AAAAAAAAB8c/Q2SsmI8Ak9o/s1600/Download+YouTube+Video+Without+Any+Program+-+YouTube+-+360Chrome_2012-09-14_21-49-55.png](http://2.bp.blogspot.com/-lOllM-mcfMA/UFM4DSZcrUI/AAAAAAAAB8c/Q2SsmI8Ak9o/s1600/Download+YouTube+Video+Without+Any+Program+-+YouTube+-+360Chrome_2012-09-14_21-49-55.png)

here's that link for my video:
> http://o-o---preferred---tm-jhb1---v19---lscache4.c.youtube.com/generate_204?ip=219.92.138.62&upn=ZrwooJCjwaw&sparams=algorithm%2Cburst%2Ccp%2Cfactor%2Cid%2Cip%2Cipbits%2Citag%2Csource%2Cupn%2Cexpire&fexp=909528%2C927000%2C913543%2C910207%2C910219%2C920917%2C922401%2C920704%2C912806%2C913419%2C913558%2C913556%2C912706&mt=1347629353&ms=au&algorithm=throttle-factor&burst=40&ipbits=8&itag=34&sver=3&signature=5CD2E6723EEAA860DC71A1C9338BD7CEF47A70F7.A33CCAA3F16DDBE5C302A96A3BC602E7FA6DD35B&mv=m&source=youtube&expire=1347653250&key=yt1&factor=1.25&cp=U0hTTFZQUV9KSkNOM19OSlVDOjFwajZCZ3pXMlVV&id=e8ad1c7c170aea73

the **itag** parameter is 34, that means the video you downloading is a FLV format, **your video must have a .flv extension**. Did you notice that, the **generate\_204** doesn't have the **range** parameter!

> 240p - itag = 5 (`*`.flv)

> 360p - itag = 34 (`*`.flv)

> 480p - itag = 35 (`*`.flv)

> 720p - itag = 22 (`*`.mp4)

then replace the word **generate\_204** to **videoplayback**,
> http://o-o---preferred---tm-jhb1---v19---lscache4.c.youtube.com/videoplayback?ip=219.92.138.62&upn=ZrwooJCjwaw&sparams=algorithm%2Cburst%2Ccp%2Cfactor%2Cid%2Cip%2Cipbits%2Citag%2Csource%2Cupn%2Cexpire&fexp=909528%2C927000%2C913543%2C910207%2C910219%2C920917%2C922401%2C920704%2C912806%2C913419%2C913558%2C913556%2C912706&mt=1347629353&ms=au&algorithm=throttle-factor&burst=40&ipbits=8&itag=34&sver=3&signature=5CD2E6723EEAA860DC71A1C9338BD7CEF47A70F7.A33CCAA3F16DDBE5C302A96A3BC602E7FA6DD35B&mv=m&source=youtube&expire=1347653250&key=yt1&factor=1.25&cp=U0hTTFZQUV9KSkNOM19OSlVDOjFwajZCZ3pXMlVV&id=e8ad1c7c170aea73

then open up your downloader, and enjoy you video!

---

_[<<<Previous Tutorial](http://code.google.com/p/youtubesniffer/wiki/Tut1UsingNetworkSniffer)_

_[Next Tutorial>>>](http://code.google.com/p/youtubesniffer/wiki/Tut3ByGetVideoInfo)_

---



---

![http://i.creativecommons.org/l/by-nc/2.5/my/88x31.png](http://i.creativecommons.org/l/by-nc/2.5/my/88x31.png)

YouTube Sniffer Project by [Gary Ng](http://garyngzhongbo.blogspot.com/) is licensed under a [Creative Commons Attribution-NonCommercial 2.5 Malaysia License.](http://creativecommons.org/licenses/by-nc/2.5/my/deed.en_US)