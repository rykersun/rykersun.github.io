---
layout: post
title: "Git 永久記憶密碼"
date: 2020-10-01 19:06:46
image: '/assets/img/post/'
description: 解決 git 每次 push 都要求密碼的問題
tags: 
- git
- tricks
categories:
- git 心路歷程
twitter_text: 解決 git 每次 push 都要求密碼的問題
---

## 前言

這個問題其實困擾我一段時間了, 所以今天來解決一下, 雖然有很多種辦法, 但我比較喜歡 `HTTPS Credentials Caching` 這個功能的解決辦法, Les's Go~

---

## 前置設定

在開始之前, 請先設定 git 的使用者及電子郵件

{% highlight bash %}
git config --global user.name = "使用者名稱"
git config --global user.name = "使用者電子郵件"
{% endhighlight %}

接下來請 cd 到自己的 git repository, 或者從 github clone 一個

---

## 設置

1.進到自己的 repository 後, 執行以下指令

{% highlight bash %}
git config --global credential.helper store
{% endhighlight %}

2.進行一次 push

{% highlight bash %}
git push
{% endhighlight %}

3.輸入完密碼後, 就完成了, 如果再 push 一次, 就會發現 git 不會詢問密碼了, 如果不想要繼續記住密碼, 只要把 `~/.git-credentials` 這個檔案刪除就好~
