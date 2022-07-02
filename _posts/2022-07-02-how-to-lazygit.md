---
layout: post
title: "從零開始的 Lazygit 教學"
date: 2022-07-02 15:37:30
image: '/assets/img/post/'
description: 高效率使用 git 的神器
tags:
- Lazygit
- git
- Terminal Application
categories:
- Linux 筆記
twitter_text: 高效率使用 git 的神器
---

# 介紹
Lazygit 是一款能夠讓你少打很多 git 指令的工具，而且操作方式完全不需要滑鼠，你只需要將你的手放在鍵盤上，就可以任意的使用 git 去做事，我是在使用 Neovim 的時候才知道 Lazygit 這個工具，當時看到的時候只覺得...

`『他媽帥爆了!』`

所以就一路用到現在了...

當然在使用之前最好還是能夠先了解一點 git 的基本知識，才不會表面看起來很帥，實際上完全不知道自己再幹麻 XD

# 安裝
首先去 [Lazygit 的 github repository](https://github.com/jesseduffield/lazygit){:target="_blank"} 把 Binary Releases 下載下來

像我是使用 Linux 那我就下載 `lazygit_0.34_Linux_x86_64.tar.gz` 這個檔案

然後再使用 tar 把 lazygit 解壓縮出來

## Command
{% highlight bash %}
tar -zxvf lazygit_0.34_Linux_x86_64.tar.gz lazygit
{% endhighlight %}

解完之後你就會看到目錄下多了一個 lazygit

我們要將這個檔案放到 `/usr/local/bin` 裡面

## Command
{% highlight bash %}
sudo mv lazygit /usr/local/bin/
{% endhighlight %}

這樣就完成了～

# 設定
首先建立一個測試環境

## Command
{% highlight bash %}
mkdir test_lazygit
cd test_lazygit/
git init .
lazygit
{% endhighlight %}

先別離開，我知道你看到簡體中文很無奈，接下來我會教你如何改成英文

lazygit 的設定檔位置是在 `~/.config/lazygit`

裡面會有兩個檔案，我們要改的是 `config.yml`

可以先使用官方的 [Default 設定檔](https://github.com/jesseduffield/lazygit/blob/master/docs/Config.md){:target="_blank"}

然後把裡面的 `language: 'auto'` 改成 `language: 'en'`

這樣就會變成英文版了

附上[我的設定檔](https://github.com/rykersun/Lazygit-Default-Config/blob/main/config.yml){:target="_blank"}

# 基本使用 (未完待續)
