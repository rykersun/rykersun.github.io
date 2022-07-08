---
layout: post
title: "Elementary OS 6.0 + i3-radius 搭建 Nord 主題桌面環境"
date: 2022-07-09 01:40:08
image: '/assets/img/post/'
description: 72 小時採坑濃縮筆記
tags:
- Elementary OS
- i3-radius
- Nord Theme
categories:
- 個人筆記
twitter_text: 72 小時採坑濃縮筆記
---

# i3-radius 是啥?
`i3WM` (i3 window manager) 是一種`桌面環境` (desktop environment) 

而其中有一個分支叫做 `i3-gaps` , 可以讓視窗之間有縫隙, 增加視覺美感

而 `i3-gaps` 底下又長出了一個分支...也就是今天的主角 `i3-radius`

`i3-radius` 可以讓視窗的四個角變得圓滑, 我覺得還不錯看, 所以就選擇這個分支了。

# 安裝環境
這次我是選擇安裝在 Elementary OS 6.0 上面, 因為覺得 Elementary 本身也蠻漂亮的

捨不得刪掉...

所以乾脆就把 `i3` 也裝在上面, 一箭雙鵰。

# Install Dependencies
在安裝之前, 有一些 Dependencies 要先安裝, 已經幫各位整理好了, 如下: 

{% highlight bash %}
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool libxcb-xrm-dev automake
{% endhighlight %}

裝完之後, 就可以開始 build 了。

# Build And Install
以下開始安裝, 作者很貼心的幫我們把 build 的指令做成了 `build.sh`

只要執行 `build.sh` 完事了。

## Step 1
把 `i3-radius clone` 下來
{% highlight bash %}
git clone https://github.com/terroo/i3-radius
{% endhighlight %}

## Step 2
進入 `i3-radius` 並且執行 `build.sh`
{% highlight bash %}
cd i3-radius && sh build.sh
{% endhighlight %}

# 生成 i3 config file
裝完之後登出就可以看到旁邊有一個齒輪的符號

點那個齒輪就可以選擇使用 `i3` 登入了~

登入之後會問你幾個問題, 沒意外的話就是問你要將 `$mod key` 設成哪個鍵

> 預設是 `Win鍵` (或者說是 `Super鍵`)

這裡建議都用預設就好 (Enter 一直按就對了)

之後會看到黑畫面, 然後下面還有一條錯誤

沒關係, 那個錯目前不影響使用, 可以先忽略

別怕! 你已經成功一半了, 接下來按 `Win+Enter` 就可以打開 Terminal

> 如果剛剛你不聽話, 把 `$mod key` 設成了 `Alt`, 那你就要按 `Alt+Enter` 才能打開 Terminal

# i3-gaps or i3-radius?
開頭明明說視窗之間有縫隙啊！ 說好的圓滑勒?

現在怎麼變成這副德性? (掩面)

因為還沒設定嘛？ 哪有人一出生就超帥超美的, 都是之後整形才變漂亮的 (๑乛◡乛๑)

首先先確認是否為 `i3-radius` 本尊

打開 Terminal 編輯這個檔案 `~/.config/i3/config`

{% highlight bash %}
cd
vim ~/.config/i3/config
{% endhighlight %}

在檔案最下面加入以下文字

{% highlight vim %}
gaps inner 20
gaps outer 20
{% endhighlight %}

儲存關閉檔案之後按下 `Shift+Win+c` 來重新載入設定檔

如果`沒有`錯誤訊息, 那恭喜你, 你裝得絕對是 `i3-gaps` 或 `i3-radius`

接下來再加入以下這幾行

{% highlight vim %}
smart_borders on
smart_borders no_gaps
border_radius 20
{% endhighlight %}

一樣儲存並且重新載入設定檔, 如果 `Still 沒出錯`, 那又要恭喜你

你裝的 100% 是 `i3-radius`