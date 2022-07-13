---
layout: post
title: "如何\"帥氣的\"在 Linux/Mac 寫程式"
date: 2022-07-13 22:25:46
image: '/assets/img/post/'
description: How to become smart in Linux/Mac.
tags:
- Setup
- Coding
- Linux
- Mac
categories:
- NZT
twitter_text: How to become smart in Linux/Mac
---
<!-- [text](link){:target="\_blank"} -->
# 如何看起來像一位\"專業的\"工程師

* 放棄滑鼠, 那是一種浪費時間的發明
* 刪掉 Windows(我甚至不想幫它上色), 使用 `Linux`
* 使用 `Terminal` 完成所有的工作
* 沒了, 堅持以上三點, 你就是 `True Master` 了

# 安裝 Kitty Terminal

想成為 `True Master`? 那就快裝吧! 別廢話了!

{% highlight bash %}
sudo apt install kitty
{% endhighlight %}

# 設定你的好朋友

好了, 恭喜你成功踏出了成為 `True Master` 的第一步, 從今天開始, 你們就是好朋友了, 現在快點來設定你的新朋友吧 <del>(真希望現實生活中的朋友也能讓我設定)</del>

# 衣服

先給我等等, 你朋友現在裸體, 你們到底想做啥???

## 幫朋友買新衣服

使用 [kitty-themes](https://github.com/dexpota/kitty-themes){:target="\_blank"} 幫你的朋友穿上新衣服

# 蛤?你說你不會穿??

穿衣服還要我教?

不教!

> 提示 1: `ln -s` 代表建立捷徑

> 提示 2: `OneDark` 這件衣服很好看

# 字體

`~/.config/kitty/kitty.conf`
{% highlight bash %}
font_size 16.0
font_family JetBrainsMono Nerd Font
include ./theme.conf
{% endhighlight %}

# Ranger

[ranger/ranger](https://github.com/ranger/ranger){:target="\_blank"}

# Image Preview Using Kitty

`~/.config/ranger/rc.conf`

{% highlight bash %}
set preview_images true
set preview_images_method kitty
{% endhighlight %}

# Ranger Plugin (File Icon)

[alexanderjeurissen/ranger_devicons](https://github.com/alexanderjeurissen/ranger_devicons){:target="\_blank"}
