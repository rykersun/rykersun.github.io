---
layout: post
title: "在 Elementary OS 上安裝 Steam"
date: 2022-07-01 14:04:29
image: '/assets/img/post/'
description: 以後想玩 Steam 的遊戲就不需要再切到 Windows 了~
tags:
- Elementary OS
- Steam
categories:
- Linux 筆記
twitter_text: 以後想玩 Steam 的遊戲就不需要再切到 Windows 了~
---

本篇為個人筆記，非教學。

真的好不容易才裝成功...

安裝指令如下: 

{% highlight bash %}
sudo dpkg --add-architecture i386

sudo apt update

sudo apt install gdebi wget gdebi-core libgl1-mesa-glx:i386

wget -O ~/steam.deb http://media.steampowered.com/client/installer/steam.deb

sudo gdebi ~/steam.deb
{% endhighlight %}
