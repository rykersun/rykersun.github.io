---
layout: post
title: "Elementary OS 6.0 + i3-radius 搭建 Nord 主題桌面環境 (1)"
date: 2022-07-09 01:40:08
image: '/assets/img/post/'
description: 72 小時採坑濃縮筆記
tags:
- Elementary OS
- i3-radius
- Nord Theme
categories:
- Elementary OS 6.0 + i3-radius 搭建 Nord 主題桌面環境
twitter_text: 72 小時採坑濃縮筆記
---

# 前言
這個系列會分成三篇

第一篇 (本篇) 會講如何安裝及設定 `i3-radius`

第二篇會講如何安裝及設定 `bumblebee-status`

最後一篇會講如何安裝及設定 `Rofi`

以上都會統一設定成 `Nord 風格`

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
cd # 回到家目錄
vim ~/.config/i3/config # 使用 vim 開啟 ~/.config/i3/config
{% endhighlight %}

在檔案最下面加入以下文字

{% highlight bash %}
gaps inner 20 # 設定視窗之間的縫隙距離
gaps outer 20 # 設定視窗與螢幕周圍的距離
{% endhighlight %}

儲存關閉檔案之後按下 `Shift+Win+c` 來重新載入設定檔

如果`沒有`錯誤訊息, 那恭喜你, 你裝得絕對是 `i3-gaps` 或 `i3-radius`

接下來再加入以下這幾行

{% highlight bash %}
smart_borders on
smart_borders no_gaps
border_radius 20 # 設定視窗角落圓滑程度
{% endhighlight %}

一樣儲存並且重新載入設定檔, 如果 `Still 沒出錯`, 那又要恭喜你

你裝的 100% 是 `i3-radius`

# 其他設定
這邊附上一些其他我覺的好用的設定, 功能可以參考註解

> `bumblebee-status` 以及 `Rofi` 的設定可以先跳過, 之後會在詳細介紹

以下為設定檔
{% highlight bash %}
# 設定視窗邊框厚度
for_window [class="^.*"] border pixel 10

# 設定視窗邊框顏色
client.focused #555555 #555555 #ffffff #81A1C1 #81A1C1

# 設定視窗之間的縫隙距離
gaps inner 20

# 設定視窗與螢幕周圍的距離
gaps outer 20

smart_borders on
smart_borders no_gaps

# 設定視窗角落圓滑程度
border_radius 20

# 設定關閉視窗按鍵 (如果使用此行, 要記得將原本的設定註解)
bindsym $mod+Shift+x kill

# 設定切換工作區的快捷鍵
bindsym $mod+Caps_Lock workspace next
bindsym $mod+Tab workspace prev

# 音量快捷鍵
bindsym $mod+F10 exec pactl set-sink-mute @DEFAULT_SINK@ toggle # Mute
bindsym $mod+F11 exec pactl set-sink-volume @DEFAULT_SINK@ -5%  # Up
bindsym $mod+F12 exec pactl set-sink-volume @DEFAULT_SINK@ +5%  # Down

# 截圖快捷鍵
# 記得要安裝 maim 並且使用 ln -s 建立 pictures 捷徑才能使用以下快捷鍵
bindsym Print exec --no-startup-id maim "/home/$USER/pictures/$(date)"
bindsym $mod+Print exec --no-startup-id maim --window $(xdotool getactivewindow) "/home/$USER/pictures/$(date)"
bindsym Shift+Print exec --no-startup-id maim --select "/home/$USER/pictures/$(date)"

# 桌布設定 (要安裝 feh, 並且將桌布命名成 wallpaper.jpeg 放置在剛剛建立的 pictures 捷徑內)
# 將 sun 改為自己的使用者名稱
exec --no-startup-id feh --bg-scale '/home/sun/pictures/wallpaper.jpeg'

# 開機的時啟動 compton
exec --no-startup-id compton

# Rofi 設定
bindsym $mod+d exec --no-startup-id rofi -show drun
bindsym $mod+p exec --no-startup-id rofi -show power-menu -modi power-menu:rofi-power-menu
bindsym $mod+n exec --no-startup-id rofi -show ssh
bindsym $mod+w exec --no-startup-id rofi -show window
bindsym $mod+c exec --no-startup-id rofi -show calc -modi calc -no-show-match -no-sort -no-persist-history

# bumblebee-status 設定
bar {
	font pango:Hack Nerd Font 14
	position top
	status_command ~/clone/bumblebee-status/bumblebee-status -m nic disk:root \
		memory battery date time pasink \
	 	-t nord-powerline
}
{% endhighlight %}

# 小結
剛剛貼完設定檔之後才發現還有一些東西沒講到, 所以這裡就順便補充一下

`* feh`: 是設定桌布的軟體, 可以使用 `sudo apt install feh` 來安裝

`* compton`: 是設定特效的軟體, 可以使用 `sudo apt install compton` 來安裝

`* maim`: 截圖用的工具, 可以使用 `sudo apt install maim` 來安裝

差不多 i3 的設定就到這邊, 下一篇是 `bumblebee-status` 的安裝與設定

可以直接讓你的 i3 顏質 + 500

最後附上我的 Nord 桌布當作本篇的結尾~~

<a href="https://drive.google.com/file/d/1yulRp3DtPo2GwSdAn7yQN8Ltk9BUfXwM/view?usp=sharing" target="_blank">桌布下載</a>
