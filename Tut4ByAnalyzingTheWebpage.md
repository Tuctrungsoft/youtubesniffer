# **YouTube Video Donwloading Tutorial - 4. By Analyzing The Video's Webpage Manually** #
## Table Of Contents ##


---

## Introduction ##

Here is the another tutorial from me, previously, I thought you all how to download the YouTube video by the network sniffer[Tutorial 1](http://code.google.com/p/youtubesniffer/wiki/Tut1UsingNetworkSniffer) [Tutorial 2](http://code.google.com/p/youtubesniffer/wiki/Tut2ByGenerate204) in Google Chrome, and by using the function that provided by YouTube [Tutorial 3](http://code.google.com/p/youtubesniffer/wiki/Tut3ByGetVideoInfo).

This tutorial will teach you how to get the video's download link manually by analyzing the video's webpage, it is quite difficult and complicated because you have to search through the whole webpage's source code and find for the video's download link. This method is also what I shown in my video -

<a href='http://www.youtube.com/watch?feature=player_embedded&v=6K0cfBcK6nM' target='_blank'><img src='http://img.youtube.com/vi/6K0cfBcK6nM/0.jpg' width='425' height=344 /></a>


---


### Preparation ###
  * An internet browser that can view a webpage's source code (in this case, I use Google Chrome)
  * An URL Decoder - You can download my [YouTube Sniffer Tools](http://dl.dropbox.com/u/43619472/OtherSoft/YouTubeSniffer_src_bin.zip) or [this online URL Encode/Decoder](http://urlendecoder.tk)
  * Notepad or any other editor (http://notepad-plus-plus.org/ Notepad++] is recommended)
  * YouTube Video (my video - **[Download The YouTube Video Without Any Program](http://www.youtube.com/watch?v=6K0cfBcK6nM)** for demonstration again!)


---


## Start ##

Open your internet browser, navigate to your YouTube video's link, then view the webpage **source code**

![http://3.bp.blogspot.com/-eBhDO4NbUxg/UFVxO0tXWGI/AAAAAAAAB-8/tXBQ6Ur8mc4/s1600/Download+YouTube+Video+Without+Any+Program+-+YouTube+-+360Chrome_2012-09-16_14-25-23.png](http://3.bp.blogspot.com/-eBhDO4NbUxg/UFVxO0tXWGI/AAAAAAAAB-8/tXBQ6Ur8mc4/s1600/Download+YouTube+Video+Without+Any+Program+-+YouTube+-+360Chrome_2012-09-16_14-25-23.png)
_Right click in a webpage, select view page source, then you can view the webpage source code in Google Chrome_

Where does YouTube store the video information? YouTube video was played by **Flash Player**, the extension of Flash Player is **swf**! So search for **swf** in the webpage source code, we found many of them, the **swf** right after the **function** is what we want!

![http://3.bp.blogspot.com/-BJodbIftwBg/UFV8lFztW9I/AAAAAAAAB_Q/TYKHUDctCVE/s1600/view-source_www.youtube.png](http://3.bp.blogspot.com/-BJodbIftwBg/UFV8lFztW9I/AAAAAAAAB_Q/TYKHUDctCVE/s1600/view-source_www.youtube.png)
_The whole string after **var swf =** consist the video download link and a bundle of its information!_

Copy the whole content in **var swf =**, then use [YouTube Sniffer Tools](http://dl.dropbox.com/u/43619472/OtherSoft/YouTubeSniffer_src_bin.zip) to decode it.
![http://3.bp.blogspot.com/-k8WAYTVqD58/UFWBFPVEiaI/AAAAAAAAB_s/hu5hYS4nk7Y/s1600/view-source_www.youtube.png](http://3.bp.blogspot.com/-k8WAYTVqD58/UFWBFPVEiaI/AAAAAAAAB_s/hu5hYS4nk7Y/s1600/view-source_www.youtube.png)

![http://4.bp.blogspot.com/-ohSdnd763GM/UFWlTtcvGpI/AAAAAAAACAA/NUJAPwfTqCU/s1600/YouTube+Sniffer+ToolsVersion+1.0.png](http://4.bp.blogspot.com/-ohSdnd763GM/UFWlTtcvGpI/AAAAAAAACAA/NUJAPwfTqCU/s1600/YouTube+Sniffer+ToolsVersion+1.0.png)
_I updated the decoder for YouTube Sniffer Tools, it looks slightly different from previous version_

All the download links was located right after the **url\_encoded\_fmt\_stream\_map=**, and also, all the video's download links was separated by **url=**
(I highlighted it in Notepad++)

![http://3.bp.blogspot.com/-d-Gggeu1Hc4/UFWqPqsA--I/AAAAAAAACAU/lCKSRuRri7Y/s1600/_new++2+-+Notepad++_2012-09-16_18-29-48.png](http://3.bp.blogspot.com/-d-Gggeu1Hc4/UFWqPqsA--I/AAAAAAAACAU/lCKSRuRri7Y/s1600/_new++2+-+Notepad++_2012-09-16_18-29-48.png)

So, we can seperate all the download link easily! But some the download link still need some modification, otherwise, YouTube don't let you download the video!For example:
> http://o-o---preferred---tm-jhb1---v11---lscache1.c.youtube.com/videoplayback?upn=iAmgTrveFno&sparams=cp,id,ip,ipbits,itag,ratebypass,source,upn,expire&fexp=909528,927000,913543,910207,910219,920917,922401,920704,912806,913419,913558,913556,912706,900816&key=yt1&expire=1347808050&itag=45&ipbits=8&sver=3&ratebypass=yes&mt=1347783972&ip=219.92.138.62&mv=m&source=youtube&ms=au&cp=U0hTTFhLVl9KSkNOM19QRVpBOjFwajZCaXVCMFVV&id=e8ad1c7c170aea73&type=video/webm*; codecs="vp8.0, vorbis"&fallback\_host=tc.v11.cache1.c.youtube.com&sig=09CA7F2FBA737C7D199F57473502FFF85D884088.821769B3A81307435543EC9471BF64B0531B5D42&quality=hd720,itag=22&

The whole string right after the last **;** have to be remove, after remove(don't delete it first!):
> http://o-o---preferred---tm-jhb1---v11---lscache1.c.youtube.com/videoplayback?upn=iAmgTrveFno&sparams=cp,id,ip,ipbits,itag,ratebypass,source,upn,expire&fexp=909528,927000,913543,910207,910219,920917,922401,920704,912806,913419,913558,913556,912706,900816&key=yt1&expire=1347808050&itag=45&ipbits=8&sver=3&ratebypass=yes&mt=1347783972&ip=219.92.138.62&mv=m&source=youtube&ms=au&cp=U0hTTFhLVl9KSkNOM19QRVpBOjFwajZCaXVCMFVV&id=e8ad1c7c170aea73&type=video/webm

But, YouTube still show **Access Denied**! Why? Because the download link missed out the parameter **signature**! We can saw that the **sig** parameter was after the **;**:
> ; codecs="vp8.0, vorbis"&fallback\_host=tc.v11.cache1.c.youtube.com**&sig=09CA7F2FBA737C7D199F57473502FFF85D884088.821769B3A81307435543EC9471BF64B0531B5D42**&quality=hd720,itag=22&

Copy it and paste after the modified download link:
> http://o-o---preferred---tm-jhb1---v11---lscache1.c.youtube.com/videoplayback?upn=iAmgTrveFno&sparams=cp,id,ip,ipbits,itag,ratebypass,source,upn,expire&fexp=909528,927000,913543,910207,910219,920917,922401,920704,912806,913419,913558,913556,912706,900816&key=yt1&expire=1347808050&itag=45&ipbits=8&sver=3&ratebypass=yes&mt=1347783972&ip=219.92.138.62&mv=m&source=youtube&ms=au&cp=U0hTTFhLVl9KSkNOM19QRVpBOjFwajZCaXVCMFVV&id=e8ad1c7c170aea73&type=video/webm*&sig=09CA7F2FBA737C7D199F57473502FFF85D884088.821769B3A81307435543EC9471BF64B0531B5D42*

and don't forgot to change the **sig** to **signature**:
> http://o-o---preferred---tm-jhb1---v11---lscache1.c.youtube.com/videoplayback?upn=iAmgTrveFno&sparams=cp,id,ip,ipbits,itag,ratebypass,source,upn,expire&fexp=909528,927000,913543,910207,910219,920917,922401,920704,912806,913419,913558,913556,912706,900816&key=yt1&expire=1347808050&itag=45&ipbits=8&sver=3&ratebypass=yes&mt=1347783972&ip=219.92.138.62&mv=m&source=youtube&ms=au&cp=U0hTTFhLVl9KSkNOM19QRVpBOjFwajZCaXVCMFVV&id=e8ad1c7c170aea73&type=video/webm*&signature*=09CA7F2FBA737C7D199F57473502FFF85D884088.821769B3A81307435543EC9471BF64B0531B5D42

Then you can download the video now!
Felt complicated? Never mind, you can use [YouTube Sniffer Tools](http://dl.dropbox.com/u/43619472/OtherSoft/YouTubeSniffer_src_bin.zip) for split all the download links out!

![http://2.bp.blogspot.com/-z-gBt8TjVtM/UFWtIb4KHdI/AAAAAAAACAo/lDd3QbTU0yo/s1600/YouTube+Sniffer+ToolsVersion+1.0.png](http://2.bp.blogspot.com/-z-gBt8TjVtM/UFWtIb4KHdI/AAAAAAAACAo/lDd3QbTU0yo/s1600/YouTube+Sniffer+ToolsVersion+1.0.png)


---

## END ##
Here comes the end of the series of tutorial, if there has any mistake(included any grammar mistake, I'm poor in english, sorry), please kindly point it out, I will fix it as fast as possible!

---

_[<<<Previous Tutorial](http://code.google.com/p/youtubesniffer/wiki/Tut3ByGetVideoInfo)_

---



---

![http://i.creativecommons.org/l/by-nc/2.5/my/88x31.png](http://i.creativecommons.org/l/by-nc/2.5/my/88x31.png)

YouTube Sniffer Project by [Gary Ng](http://garyngzhongbo.blogspot.com/) is licensed under a [Creative Commons Attribution-NonCommercial 2.5 Malaysia License.](http://creativecommons.org/licenses/by-nc/2.5/my/deed.en_US)