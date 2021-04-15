# TOS-Bad-Apple
The code to play Bad Apple!! on TempleOS

Sorry, the code is messy and if it's inefficient.

# Why?
I had an idea and wanted to try it, to see if it is possible to do it my way, which it is. [Other people](https://archive.org/details/UCiHz7aSA2zdYsdhCMHH8JJQ_2019/20191211+-+iMRp2O9zBPw+-+Touhou+-+Bad+Apple!!+on+TempleOS/20191211+-+iMRp2O9zBPw+-+Touhou+-+Bad+Apple!!+on+TempleOS.mkv) already played Bad Apple!! on TempleOS in better ways, but as always this is my take on this idea.

# How does it work?
Simple! I have a file called `Data.HC.Z` Which stores each pixel in a huge array (bad idea and also explains the huge load time), each pixel in the array is either a Zero or a One where 0 is Black and 1 is White. That way my code in `BadApple!!.HC.Z` draws each pixel with the colors taken from the array. The code can be improved, but I'm just too bad at programming that this is my best.

# Is music played by TempleOS?
No. I add the music afterwards with the real Bad Apple!!

# How to try it?
Download the ISO.C file from the releases and mount it in TempleOS, then drag the mounted files to a folder. All Files NEED To Be In The Same Folder! Then open `BadApple.HC.Z`, press `F5`, wait a bit and type in the command-line "BadApple;". **Enjoy!**

To cancel the playing press any key.
