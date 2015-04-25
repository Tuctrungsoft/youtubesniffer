# **YouTube Video Downloading Tutorial - 3. By requesting the video information with get\_video\_info** #
## Table Of Contents ##


---

## Introduction ##

This tutorial is slightly different from [tutorial 1](http://code.google.com/p/youtubesniffer/wiki/Tut1UsingNetworkSniffer) and [tutorial 2](http://code.google.com/p/youtubesniffer/wiki/Tut2ByGenerate204), in the previous tutorial, I use the tool that built-in in Google Chrome, in this tutorial, we try a different way!


YouTube provide a php file **get\_video\_info** to get a video's information, what we have to do is just set the parameter **video\_id** and navigate to that link, the browser will download that file and we can open that downloaded file with Notepad (or Notepad++), all the information we want was in there!

By the way, I suggest not to use this methods because it cannot get all video's information and video download link, this tutorial written for your extraformation.

---

## Start ##
First, you need a video (I will use my video [Download The YouTube Video Without Any Program](http://www.youtube.com/watch?v=6K0cfBcK6nM) as demonstration), copy the string after the parameter **v=**, for example the video http://www.youtube.com/watch?v=6K0cfBcK6nM, the string after the parameter is **6K0cfBcK6nM**

Then replace the **xxxx** in **http://youtube.com/get_video_info?video_id=xxxx* to the video's ID!**

Still remember the tools I provide? -- [YouTube Sniffer Tools](http://dl.dropbox.com/u/43619472/OtherSoft/YouTubeSniffer_src_bin.zip), if you can't get the video id correct, you can use it! Download and open the program, paste the video link in the textbox beside the label "YouTube Video Link:", then press **Enter**.

![http://2.bp.blogspot.com/-SWapRqb-Ao8/UFQigUoruTI/AAAAAAAAB9I/E2qxTkml06s/s1600/Greenshot_2012-09-15_14-37-07.png](http://2.bp.blogspot.com/-SWapRqb-Ao8/UFQigUoruTI/AAAAAAAAB9I/E2qxTkml06s/s1600/Greenshot_2012-09-15_14-37-07.png)

The video's ID is there! The get\_video\_info link, too!

So, the get\_video\_info link for my video is:http://youtube.com/get_video_info?video_id=6K0cfBcK6nM, open up your browser and navigate to that link, your internet browser will pop up to download the file, download it. After downloaded, open the file with Notepad.

![http://2.bp.blogspot.com/-gjBt-n1yKi4/UFQlsKd8a5I/AAAAAAAAB9c/vu5LoLOi-vA/s1600/New+Tab+-+360Chrome_2012-09-15_14-52-07.png](http://2.bp.blogspot.com/-gjBt-n1yKi4/UFQlsKd8a5I/AAAAAAAAB9c/vu5LoLOi-vA/s1600/New+Tab+-+360Chrome_2012-09-15_14-52-07.png)

_Download with your internet browser_

![http://1.bp.blogspot.com/-tftHW_piMgU/UFQmQQB4nYI/AAAAAAAAB9k/igGKgYP8DHA/s1600/get_video_info+-+Notepad_2012-09-15_14-54-20.png](http://1.bp.blogspot.com/-tftHW_piMgU/UFQmQQB4nYI/AAAAAAAAB9k/igGKgYP8DHA/s1600/get_video_info+-+Notepad_2012-09-15_14-54-20.png)

_Open with your notepad (or any other editor)_

Then decode it with my [YouTube Sniffer Tools](http://dl.dropbox.com/u/43619472/OtherSoft/YouTubeSniffer_src_bin.zip) with option **ASCII Decode** (or you can use http://urlendecoder.tk)

![http://4.bp.blogspot.com/-7ookyDTsYGI/UFQwvxpY3xI/AAAAAAAAB-A/Z65TmUnl-_0/s1600/YouTube+Sniffer+Tools_2012-09-15_15-34-57_2012-09-15_15-39-11.png](http://4.bp.blogspot.com/-7ookyDTsYGI/UFQwvxpY3xI/AAAAAAAAB-A/Z65TmUnl-_0/s1600/YouTube+Sniffer+Tools_2012-09-15_15-34-57_2012-09-15_15-39-11.png)
_Decoded URL_

After decoding, don't afraid of that long-long link, what we want is: **The Video Download Link**!
> account\_playback\_token=qj05lSpY6QkeBpVmfVh26BFv5CR8MTM0Nzc3ODMxOEAxMzQ3NjkxOTE4&ptk=youtube\_none&url\_encoded\_fmt\_stream\_map=**url=**http://o-o---preferred---tm-jhb1---v11---lscache1.c.youtube.com/videoplayback?upn=KmaxNKxpaaA&sparams=cp,id,ip,ipbits,itag,ratebypass,source,upn,expire&fexp=909528,927000,913543,910207,910219,920917,922401,920704,912806,913419,913558,913556,912706,900816&ms=au&itag=45&ipbits=8&signature=7747B25FFF62E1B9461DF28F3E708C07AE7240E2.55F6887211C21104E40FACB9C17FEDE2DFC6E296&mv=m&sver=3&mt=1347691691&ratebypass=yes&source=youtube&expire=1347714450&key=yt1&ip=219.92.138.62&cp=U0hTTFdMUl9KSkNOM19PRlZFOjFwajZCaHZYNFVV&id=e8ad1c7c170aea73&quality=hd720&fallback_host=tc.v11.cache1.c.youtube.com&type=video/webm; codecs="vp8.0, vorbis"&itag=45,**url=**http://o-o---preferred---tm-jhb1---v21---lscache3.c.youtube.com/videoplayback?upn=KmaxNKxpaaA&sparams=cp,id,ip,ipbits,itag,ratebypass,source,upn,expire&fexp=909528,927000,913543,910207,910219,920917,922401,920704,912806,913419,913558,913556,912706,900816&ms=au&itag=22&ipbits=8&signature=2640D99C5513FB3326599DD99DE918F06DC87EDE.8BDD450C333EAA95C92CBC829118F0B1892E1BC1&mv=m&sver=3&mt=1347691691&ratebypass=yes&source=youtube&expire=1347714450&key=yt1&ip=219.92.138.62&cp=U0hTTFdMUl9KSkNOM19PRlZFOjFwajZCaHZYNFVV&id=e8ad1c7c170aea73&quality=hd720&fallback_host=tc.v21.cache3.c.youtube.com&type=video/mp4; codecs="avc1.64001F, mp4a.40.2"&itag=22,**url=**http://o-o---preferred---tm-jhb1---v8---lscache2.c.youtube.com/videoplayback?upn=KmaxNKxpaaA&sparams=cp,id,ip,ipbits,itag,ratebypass,source,upn,expire&fexp=909528,927000,913543,910207,910219,920917,922401,920704,912806,913419,913558,913556,912706,900816&ms=au&itag=44&ipbits=8&signature=4460451EC9B1FA8AD8D481E5F92396C2BB31A860.BB9CB172E475DFC32E07328F6ED68664C11AB770&mv=m&sver=3&mt=1347691691&ratebypass=yes&source=youtube&expire=1347714450&key=yt1&ip=219.92.138.62&cp=U0hTTFdMUl9KSkNOM19PRlZFOjFwajZCaHZYNFVV&id=e8ad1c7c170aea73&quality=large&fallback_host=tc.v8.cache2.c.youtube.com&type=video/webm; codecs="vp8.0, vorbis"&itag=44,**url=**http://o-o---preferred---tm-jhb2---v6---lscache5.c.youtube.com/videoplayback?ip=219.92.138.62&upn=KmaxNKxpaaA&sparams=algorithm,burst,cp,factor,id,ip,ipbits,itag,source,upn,expire&fexp=909528,927000,913543,910207,910219,920917,922401,920704,912806,913419,913558,913556,912706,900816&mt=1347691691&ms=au&algorithm=throttle-factor&burst=40&ipbits=8&itag=35&sver=3&signature=8A0DAB146B6AAE1A48CA46A2C3952FA704AF5B82.A3CFE2EF25AE31D0BCF0AB50FA3458144E47EBD2&mv=m&source=youtube&expire=1347714450&key=yt1&factor=1.25&cp=U0hTTFdMUl9KSkNOM19PRlZFOjFwajZCaHZYNFVV&id=e8ad1c7c170aea73&quality=large&fallback_host=tc.v6.cache5.c.youtube.com&type=video/x-flv&itag=35,*url=*http://o-o---preferred---tm-jhb2---v20---lscache6.c.youtube.com/videoplayback?upn=KmaxNKxpaaA&sparams=cp,id,ip,ipbits,itag,ratebypass,source,upn,expire&fexp=909528,927000,913543,910207,910219,920917,922401,920704,912806,913419,913558,913556,912706,900816&ms=au&itag=43&ipbits=8&signature=6D148997052A15565208483CA4D91F8E8B43B97D.51C0C186806A25F55E26D84F98DDB499DF6216E6&mv=m&sver=3&mt=1347691691&ratebypass=yes&source=youtube&expire=1347714450&key=yt1&ip=219.92.138.62&cp=U0hTTFdMUl9KSkNOM19PRlZFOjFwajZCaHZYNFVV&id=e8ad1c7c170aea73&quality=medium&fallback_host=tc.v20.cache6.c.youtube.com&type=video/webm; codecs="vp8.0, vorbis"&itag=43,**url=**http://o-o---preferred---tm-jhb1---v19---lscache4.c.youtube.com/videoplayback?ip=219.92.138.62&upn=KmaxNKxpaaA&sparams=algorithm,burst,cp,factor,id,ip,ipbits,itag,source,upn,expire&fexp=909528,927000,913543,910207,910219,920917,922401,920704,912806,913419,913558,913556,912706,900816&mt=1347691691&ms=au&algorithm=throttle-factor&burst=40&ipbits=8&itag=34&sver=3&signature=C94A447A89405EECF543985A82359F1FBC471FA5.57EF67A252260597ADCC396B9A3F66BE0A15527D&mv=m&source=youtube&expire=1347714450&key=yt1&factor=1.25&cp=U0hTTFdMUl9KSkNOM19PRlZFOjFwajZCaHZYNFVV&id=e8ad1c7c170aea73&quality=medium&fallback_host=tc.v19.cache4.c.youtube.com&type=video/x-flv&itag=34,*url=*http://o-o---preferred---tm-jhb1---v11---lscache4.c.youtube.com/videoplayback?upn=KmaxNKxpaaA&sparams=cp,id,ip,ipbits,itag,ratebypass,source,upn,expire&fexp=909528,927000,913543,910207,910219,920917,922401,920704,912806,913419,913558,913556,912706,900816&ms=au&itag=18&ipbits=8&signature=3E3DA8FBEF3DE94F0906226B721C63EFE3E044DB.5C199F5FF27D7CC4FBE20CA898ACEE1C93719548&mv=m&sver=3&mt=1347691691&ratebypass=yes&source=youtube&expire=1347714450&key=yt1&ip=219.92.138.62&cp=U0hTTFdMUl9KSkNOM19PRlZFOjFwajZCaHZYNFVV&id=e8ad1c7c170aea73&quality=medium&fallback_host=tc.v11.cache4.c.youtube.com&type=video/mp4; codecs="avc1.42001E, mp4a.40.2"&itag=18,**url=**http://o-o---preferred---tm-jhb2---v13---lscache5.c.youtube.com/videoplayback?ip=219.92.138.62&upn=KmaxNKxpaaA&sparams=algorithm,burst,cp,factor,id,ip,ipbits,itag,source,upn,expire&fexp=909528,927000,913543,910207,910219,920917,922401,920704,912806,913419,913558,913556,912706,900816&mt=1347691691&ms=au&algorithm=throttle-factor&burst=40&ipbits=8&itag=5&sver=3&signature=03CBA0C43F54929BAC889830C8669E52B4C60892.3F388328B95F3A705D68F2DBAE63BABAD7F88CF5&mv=m&source=youtube&expire=1347714450&key=yt1&factor=1.25&cp=U0hTTFdMUl9KSkNOM19PRlZFOjFwajZCaHZYNFVV&id=e8ad1c7c170aea73&quality=small&fallback_host=tc.v13.cache5.c.youtube.com&type=video/x-flv&itag=5,*url=*http://o-o---preferred---tm-jhb1---v15---lscache3.c.youtube.com/videoplayback?ip=219.92.138.62&upn=KmaxNKxpaaA&sparams=algorithm,burst,cp,factor,id,ip,ipbits,itag,source,upn,expire&fexp=909528,927000,913543,910207,910219,920917,922401,920704,912806,913419,913558,913556,912706,900816&mt=1347691691&ms=au&algorithm=throttle-factor&burst=40&ipbits=8&itag=36&sver=3&signature=7049D4696C23E3B6ED9FBD6C2B97EFB64BA9F393.B175498F27A57927947F244279A5EB298DEDAFD6&mv=m&source=youtube&expire=1347714450&key=yt1&factor=1.25&cp=U0hTTFdMUl9KSkNOM19PRlZFOjFwajZCaHZYNFVV&id=e8ad1c7c170aea73&quality=small&fallback_host=tc.v15.cache3.c.youtube.com&type=video/3gpp; codecs="mp4v.20.3, mp4a.40.2"&itag=36,**url=**http://o-o---preferred---tm-jhb1---v5---lscache2.c.youtube.com/videoplayback?ip=219.92.138.62&upn=KmaxNKxpaaA&sparams=algorithm,burst,cp,factor,id,ip,ipbits,itag,source,upn,expire&fexp=909528,927000,913543,910207,910219,920917,922401,920704,912806,913419,913558,913556,912706,900816&mt=1347691691&ms=au&algorithm=throttle-factor&burst=40&ipbits=8&itag=17&sver=3&signature=B36BA350FE6C618727C7B5B39E0198CE501485D8.4C2B563CF4A8A3DB20EFDA3D6CF101E5224D9EEB&mv=m&source=youtube&expire=1347714450&key=yt1&factor=1.25&cp=U0hTTFdMUl9KSkNOM19PRlZFOjFwajZCaHZYNFVV&id=e8ad1c7c170aea73&quality=small&fallback_host=tc.v5.cache2.c.youtube.com&type=video/3gpp; codecs="mp4v.20.3, mp4a.40.2"&itag=17&allow\_embed=1&user\_gender=m&fexp=909528,927000,913543,910207,910219,920917,922401,920704,912806,913419,913558,913556,912706,900816&allow\_ratings=1&keywords=download,YoutubeVideo&track\_embed=0&view\_count=42&video\_verticals=[930, 41, 3, 1311]&fmt\_list=45/1280x720/99/0/0,22/1280x720/9/0/115,44/854x480/99/0/0,35/854x480/9/0/115,43/640x360/99/0/0,34/640x360/9/0/115,18/640x360/9/0/115,5/320x240/7/0/0,36/320x240/99/0/0,17/176x144/99/0/0&author=Gary Ng&muted=0&length\_seconds=179&pltype=contentugc&iurlmaxres=`http://i3.ytimg.com/vi/6K0cfBcK6nM/maxresdefault.jpg`&user\_age=22&has\_cc=False&ftoken=O5f8Q2zJ5OD9NY4ZtAMJRPWOzR98MTM0Nzc3ODMxOEAxMzQ3NjkxOTE4&iurlsd=`http://i3.ytimg.com/vi/6K0cfBcK6nM/sddefault.jpg`&status=ok&watermark=,`http://s.ytimg.com/yt/img/watermark/youtube_watermark-vflHX6b6E.png`,`http://s.ytimg.com/yt/img/watermark/youtube_hd_watermark-vflAzLcD6.png`&timestamp=1347691918&plid=AATJt\_oOHZFo\_06f&endscreen\_module=`http://s.ytimg.com/yt/swfbin/endscreen-vflgMwUy9.swf`&watch\_ajax\_token=NQV06ucqHgtSkDdZUrRjwmd91GV8MTM0Nzc3ODMxOEAxMzQ3NjkxOTE4&hl=en\_US&fshd=1&vq=auto&avg\_rating=5.0&logwatch=1&sendtmp=1&token=vjVQa1PpcFOpwVxY9j8uU1M1psjD-h7-a4I3pE\_o8EU=&thumbnail_**url=**`http://i3.ytimg.com/vi/6K0cfBcK6nM/default.jpg`&video\_id=6K0cfBcK6nM&title=Download YouTube Video Without Any Program_


Did you notice that all the video download link was seperated by **url**? So, it is simple to seperate out the video download link!
You can do it manually, but [YouTube Sniffer Tools](http://dl.dropbox.com/u/43619472/OtherSoft/YouTubeSniffer_src_bin.zip) can heko you to do this!
Copy the get\_video\_info file's content to the textbox in the URL Decoder, decode it with suitable mode, then click the **Split Video Download Link**, the program will split the video's download link for you!

![http://1.bp.blogspot.com/-QJR71YNsrGg/UFRAXQMlgmI/AAAAAAAAB-U/tP7LsaGZsss/s1600/YouTube+Sniffer+Tools_2012-09-15_16-45-06.png](http://1.bp.blogspot.com/-QJR71YNsrGg/UFRAXQMlgmI/AAAAAAAAB-U/tP7LsaGZsss/s1600/YouTube+Sniffer+Tools_2012-09-15_16-45-06.png)

Then , copy one of the download link in there, start download the video!


---

## Extra ##

**Not every video can be downloaded** with this method!
If your downloaded **get\_video\_info** file contains the error(or no download link was included), that means you cannot download that video:

![http://1.bp.blogspot.com/-woNPBqVeLIU/UFRD2T4ojrI/AAAAAAAAB-o/pHh20C76big/s1600/get_video_info+(1)+-+Notepad_2012-09-15_16-58-44.png](http://1.bp.blogspot.com/-woNPBqVeLIU/UFRD2T4ojrI/AAAAAAAAB-o/pHh20C76big/s1600/get_video_info+(1)+-+Notepad_2012-09-15_16-58-44.png)

---

_[<<<Previous Tutorial](http://code.google.com/p/youtubesniffer/wiki/Tut2ByGenerate204)_

_[Next Tutorial>>>](http://code.google.com/p/youtubesniffer/wiki/Tut4ByAnalyzingTheWebpage)_

---



---

![http://i.creativecommons.org/l/by-nc/2.5/my/88x31.png](http://i.creativecommons.org/l/by-nc/2.5/my/88x31.png)

YouTube Sniffer Project by [Gary Ng](http://garyngzhongbo.blogspot.com/) is licensed under a [Creative Commons Attribution-NonCommercial 2.5 Malaysia License.](http://creativecommons.org/licenses/by-nc/2.5/my/deed.en_US)