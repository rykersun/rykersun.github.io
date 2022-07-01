---
layout: post
title: "[Python 基礎練習] BMI 計算器"
date: 2020-10-01 18:27:25
image: '/assets/img/post/'
description: 練習用 python 撰寫一個 bmi 計算器
tags: 
- python
- practice
categories:
- python 學習之路
twitter_text: 練習用 python 撰寫一個 bmi 計算器
---

## 前言

最近開始學習 python, 以後可能時不時就做一些練習<del>(製造廢文)</del>, 這次的練習是 bmi 計算器, 先來看看規則吧!

{% highlight python %}
bmi -> 體重除以身高(m)平方
bmi < 18.5 = 過輕
24 > bmi > 18.5 = 適中
bmi >= 24 = 過重
{% endhighlight %}

---

## 思路

1.由於身高在計算時, 使用的單位是公尺 (m), 所以要寫一個 function 來轉換身高~

{% highlight python %}
def height_converter(h):
    return h/100
{% endhighlight %}

2.接下來要寫一個 function 來計算 bmi 值

{% highlight python %}
def make_bmi(h, w):
    return w/(h*h)
{% endhighlight %}

3.取得使用者的身高及體重, 並且計算出 bmi 值

{% highlight python %}
height = input("身高(cm): ")
weight = input("體重(kg): ")

new_height = height_converter(int(height))

bmi = make_bmi(new_height, int(weight))
{% endhighlight %}

4.依照一開始的條件來分析使用者的 bmi 狀況

{% highlight python %}
min_bmi = 18.5
max_bmi = 24

if bmi < min_bmi:
    print("過輕!", end="")
    print(" (bmi: " + str('%.1f' % bmi) + ")")

elif bmi < max_bmi:
    print("健康!", end="")
    print(" (bmi: " + str('%.1f' % bmi) + ")")

else:
    print("過重!", end="")
    print(" (bmi: " + str('%.1f' % bmi) + ")")
{% endhighlight %}

---

## 結果

![code_result](/assets/img/post/20201005.png)

[完整程式碼 on github](https://github.com/vuncrychen/pythonBasic/blob/master/bmi.py){:target="_blank"}

---

## 筆記

* 使用 input("") 來取得使用者輸入值, 引號內可直接 print 輸入要求
* print('%.1f' % bmi) 四捨五入到小數點第一位
