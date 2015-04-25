# **YouTube Video Downloading Tutorial - 1. By Using The Network Sniffer** #
## Table of Contents ##


**-By using the network sniffer(Google Chrome built-in this feature!), find out what’s the video link currently playing and remove the range parameters, then we can download the video.**

### Start! ###
Open up your Google Chrome browser, open a new tab, **and press F12** then **click the network tab**, after that navigate to the video that you want to download. (I will use my video [Download The YouTube Video Without Any Program](http://www.youtube.com/watch?v=6K0cfBcK6nM) for the demonstration.)

![![](http://1.bp.blogspot.com/-YI0-2aCT7gc/UFKA3_AGivI/AAAAAAAAB7Q/EcmQt1BMm7A/s1600/2012-09-14+08-55-48_New+Tab+-+360Chrome.png)](http://1.bp.blogspot.com/-YI0-2aCT7gc/UFKA3_AGivI/AAAAAAAAB7Q/EcmQt1BMm7A/s1600/2012-09-14+08-55-48_New+Tab+-+360Chrome.png)

_Press **F12** and click the **Network** tab, this function was likely same as a network packets sniffer_


Navigate to the video, and play it! You will see many requests listed on the **Name** column, the timeline show it when and how long it been requested.

![![](http://4.bp.blogspot.com/-FHVJojSZ2cc/UFKGO5oBzqI/AAAAAAAAB7g/7A2iwg-Iy-U/s1600/2012-09-14+08-55-48_New+Tab+-+360Chrome.png)](http://4.bp.blogspot.com/-FHVJojSZ2cc/UFKGO5oBzqI/AAAAAAAAB7g/7A2iwg-Iy-U/s1600/2012-09-14+08-55-48_New+Tab+-+360Chrome.png)

While the video were playing, search the request called **videoplayback**, and copy the link!

![![](http://4.bp.blogspot.com/-ICoppKV0gTo/UFKH79QRsgI/AAAAAAAAB7o/n2gcofxqjq4/s1600/2012-09-14+09-26-30_Greenshot.png)](http://4.bp.blogspot.com/-ICoppKV0gTo/UFKH79QRsgI/AAAAAAAAB7o/n2gcofxqjq4/s1600/2012-09-14+09-26-30_Greenshot.png)

As what you saw, the request type was **GET**, which mean that Google Chrome request a webpage file from the server; type was **video/x-flv**, mean that the video currently playing was a FLV video; and the size is 1.7MB.

You will see many request called **videoplayback**, you can take one of them, just one is enough! Copy that long link, my video’s link was:-

[http://o-o---preferred---tm-jhb1---v19---lscache4.c.youtube.com/videoplayback?algorithm=throttle-factor&burst=40&cp=U0hTTFZMTl9KSkNOM19ORlJBOllxYWZza3IwOW1j&expire=1347610050&factor=1.25&fexp=900504%2C909909%2C920917%2C922401%2C920704%2C912806%2C913419%2C913558%2C913556%2C925109%2C912706&id=e8ad1c7c170aea73&ip=219.92.138.62&ipbits=8&itag=34&keepalive=yes&key=yt1&ms=au&mt=1347585491&mv=m&range=13-1781759&signature=9910AA9B130F58E9C85B322DF5F7554EB81B584B.D2354DC538AE0F03A1A993163585110A42684952&source=youtube&sparams=algorithm%2Cburst%2Ccp%2Cfactor%2Cid%2Cip%2Cipbits%2Citag%2Csource%2Cupn%2Cexpire&sver=3&upn=EnUaXolh8Ok](http://o-o---preferred---tm-jhb1---v19---lscache4.c.youtube.com/videoplayback?algorithm=throttle-factor&burst=40&cp=U0hTTFZMTl9KSkNOM19ORlJBOllxYWZza3IwOW1j&expire=1347610050&factor=1.25&fexp=900504,909909,920917,922401,920704,912806,913419,913558,913556,925109,912706&id=e8ad1c7c170aea73&ip=219.92.138.62&ipbits=8&itag=34&keepalive=yes&key=yt1&ms=au&mt=1347585491&mv=m&range=13-1781759&signature=9910AA9B130F58E9C85B322DF5F7554EB81B584B.D2354DC538AE0F03A1A993163585110A42684952&source=youtube&sparams=algorithm,burst,cp,factor,id,ip,ipbits,itag,source,upn,expire&sver=3&upn=EnUaXolh8Ok)

How a long link! We have to decode this URL link first for easier reading!  Open another tab page, navigate to [http://urlendecoder.tk](http://urlendecoder.tk/) and past the link into the box, then press the **decode** button.

![![](http://2.bp.blogspot.com/-zewOcaqc8m8/UFKNk2LMcXI/AAAAAAAAB74/z0vL2QESQWU/s1600/2012-09-14+09-50-42_urlendecoder.png)](http://2.bp.blogspot.com/-zewOcaqc8m8/UFKNk2LMcXI/AAAAAAAAB74/z0vL2QESQWU/s1600/2012-09-14+09-50-42_urlendecoder.png)

The long link after decode:

[http://o-o---preferred---tm-jhb1---v19---lscache4.c.youtube.com/videoplayback?algorithm=throttle-factor&burst=40&cp=U0hTTFZMTl9KSkNOM19ORlJBOllxYWZza3IwOW1j&expire=1347610050&factor=1.25&fexp=900504,909909,920917,922401,920704,912806,913419,913558,913556,925109,912706&id=e8ad1c7c170aea73&ip=219.92.138.62&ipbits=8&itag=34&keepalive=yes&key=yt1&ms=au&mt=1347585491&mv=m&range=13-1781759&signature=9910AA9B130F58E9C85B322DF5F7554EB81B584B.D2354DC538AE0F03A1A993163585110A42684952&source=youtube&sparams=algorithm,burst,cp,factor,id,ip,ipbits,itag,source,upn,expire&sver=3&upn=EnUaXolh8Ok](http://o-o---preferred---tm-jhb1---v19---lscache4.c.youtube.com/videoplayback?algorithm=throttle-factor&burst=40&cp=U0hTTFZMTl9KSkNOM19ORlJBOllxYWZza3IwOW1j&expire=1347610050&factor=1.25&fexp=900504,909909,920917,922401,920704,912806,913419,913558,913556,925109,912706&id=e8ad1c7c170aea73&ip=219.92.138.62&ipbits=8&itag=34&keepalive=yes&key=yt1&ms=au&mt=1347585491&mv=m&range=13-1781759&signature=9910AA9B130F58E9C85B322DF5F7554EB81B584B.D2354DC538AE0F03A1A993163585110A42684952&source=youtube&sparams=algorithm,burst,cp,factor,id,ip,ipbits,itag,source,upn,expire&sver=3&upn=EnUaXolh8Ok)

Still not too short… But never mind, we just have to split all the parameters out of it, and everything will become more clear, fortunately, Google Chrome did that for us!

Just click on that **videoplayback** request and it will show us the request header in detail:

![![](http://3.bp.blogspot.com/-FGpBqpEfFCg/UFKPn5ntrNI/AAAAAAAAB8E/BFiwbHSRqKs/s1600/2012-09-14+09-59-27_Download+YouTube+Video+Without+Any+Program+-+YouTube+-+360Chrome.png)](http://3.bp.blogspot.com/-FGpBqpEfFCg/UFKPn5ntrNI/AAAAAAAAB8E/BFiwbHSRqKs/s1600/2012-09-14+09-59-27_Download+YouTube+Video+Without+Any+Program+-+YouTube+-+360Chrome.png)

Find for the **Query String Parameters**, Google Chrome split it out and decode it for us!

> algorithm:throttle-factor

> burst:40

> cp:U0hTTFZMTl9KSkNOM19ORlJBOllxYWZza3IwOW1j

> expire:1347610050

> factor:1.25

> fexp:900504,909909,920917,922401,920704,912806,913419,913558,913556,925109,912706

> id:e8ad1c7c170aea73

> ip:219.92.138.62

> ipbits:8

> itag:34

> keepalive:yes

> key:yt1

> ms:au

> mt:1347585491

> mv:m

  * **range:13-1781759**

> signature:9910AA9B130F58E9C85B322DF5F7554EB81B584B.D2354DC538AE0F03A1A993163585110A42684952

> source:youtube

> sparams:algorithm,burst,cp,factor,id,ip,ipbits,itag,source,upn,expire

> sver:3

> upn:EnUaXolh8Ok



I set the parameter **range** to bold for you, **range:13-1781759**, means YouTube currently was sending one of the part of the video from byte 13 to byte 1781759, have a total of 1781747 bytes, that equal to about 1.7MB. (The weird thing was, why YouTube transfer the FLV video file start from the byte 13 not the first byte? )

The **signature** is unique for every video; **itag** is the quality for the video, here’s some of them, and also I listed out the extension of each video file:

> 240p - itag = 5 (`*`.flv)

> 360p - itag = 34 (`*`.flv)

> 480p - itag = 35 (`*`.flv)

> 720p - itag = 22 (`*`.mp4)

For more quality and codec can refer to YouTube on Wikipedia:

[http://en.wikipedia.org/wiki/YouTube#Quality\_and\_codecs](http://en.wikipedia.org/wiki/YouTube%23Quality_and_codecs)

So, almost everything is done, just simply remove the parameter **range:**

[http://o-o---preferred---tm-jhb1---v19---lscache4.c.youtube.com/videoplayback?algorithm=throttle-factor&burst=40&cp=U0hTTFZMTl9KSkNOM19ORlJBOllxYWZza3IwOW1j&expire=1347610050&factor=1.25&fexp=900504,909909,920917,922401,920704,912806,913419,913558,913556,925109,912706&id=e8ad1c7c170aea73&ip=219.92.138.62&ipbits=8&itag=34&keepalive=yes&key=yt1&ms=au&mt=1347585491&mv=m&signature=9910AA9B130F58E9C85B322DF5F7554EB81B584B.D2354DC538AE0F03A1A993163585110A42684952&source=youtube&sparams=algorithm,burst,cp,factor,id,ip,ipbits,itag,source,upn,expire&sver=3&upn=EnUaXolh8Ok](http://o-o---preferred---tm-jhb1---v19---lscache4.c.youtube.com/videoplayback?algorithm=throttle-factor&burst=40&cp=U0hTTFZMTl9KSkNOM19ORlJBOllxYWZza3IwOW1j&expire=1347610050&factor=1.25&fexp=900504,909909,920917,922401,920704,912806,913419,913558,913556,925109,912706&id=e8ad1c7c170aea73&ip=219.92.138.62&ipbits=8&itag=34&keepalive=yes&key=yt1&ms=au&mt=1347585491&mv=m&signature=9910AA9B130F58E9C85B322DF5F7554EB81B584B.D2354DC538AE0F03A1A993163585110A42684952&source=youtube&sparams=algorithm,burst,cp,factor,id,ip,ipbits,itag,source,upn,expire&sver=3&upn=EnUaXolh8Ok)

Copy to your downloader, and enjoy your video download!

---


_[Next Tutorial>>>](http://code.google.com/p/youtubesniffer/wiki/Tut2ByGenerate204)_


---



---

![http://i.creativecommons.org/l/by-nc/2.5/my/88x31.png](http://i.creativecommons.org/l/by-nc/2.5/my/88x31.png)

YouTube Sniffer Project by [Gary Ng](http://garyngzhongbo.blogspot.com/) is licensed under a [Creative Commons Attribution-NonCommercial 2.5 Malaysia License.](http://creativecommons.org/licenses/by-nc/2.5/my/deed.en_US)