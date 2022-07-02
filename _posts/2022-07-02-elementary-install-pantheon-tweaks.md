---
layout: post
title: "在 Elementary OS 上安裝 Pantheon Tweaks"
date: 2022-07-02 15:09:39
image: '/assets/img/post/'
description: 美化一切的開始
tags:
- Elementary OS
- Pantheon Tweaks
- Shell Theme
- Icon Theme
categories:
- 重灌筆記
twitter_text: 美化一切的開始
---

想要美化全新的 Elementary OS 要做的第一件事情就是安裝 Pantheon Tweaks

安裝指令如下: 

{% highlight bash %}
sudo apt install software-properties-common

sudo add-apt-repository ppa:philip.scott/pantheon-tweaks

sudo apt update

sudo apt install pantheon-tweaks
{% endhighlight %}

裝完之後就可以在設定裡面看到 Tweaks 這個選項，點進去之後就可以調整 Shell Theme 以及 Icon Theme 了。

如果想要讓所有應用程式的 Windows Bar 都使用 Dark Style 就可以打開 Appearance 裡面的 `Force to use dark stylesheet` 這樣就可以避免某些視窗的 Windows Bar 是黑的，某些又是白的，這種極度醜陋的情況發生了。
