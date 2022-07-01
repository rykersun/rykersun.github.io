---
layout: post
title: "修理 Elementary OS 6.0 的 Dark Mode"
date: 2022-07-01 14:08:51
image: '/assets/img/post/'
description: Fix Elementary broken dark.
tags:
- Elementary OS
- Dark Mode
categories:
- 重灌筆記
twitter_text: Fix Elementary broken dark.
---

{% highlight bash %}
sudo apt install software-properties-common

sudo add-apt-repository ppa:philip.scott/pantheon-tweaks

sudo apt update

sudo apt install pantheon-tweaks
{% endhighlight %}
