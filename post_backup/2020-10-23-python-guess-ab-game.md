---
layout: post
title: "[Python 基礎練習] 猜數字遊戲"
date: 2020-10-03 00:11:15
image: '/assets/img/post/'
description: 用 python 寫一個簡單的遊戲
tags:
- python
- practice
categories:
- python 學習之路
twitter_text: 用 python 寫一個簡單的遊戲
---

## 前言

好久沒練習 python 了, 這次來練習寫一個猜數字的遊戲, 規則應該很少人會不知道吧!

猜一組四位數, 會收到 XAYB, X 代表猜的數字中, `位置以及數值皆正確的數量`, Y 代表猜的數字中. `位置不正確但數值正確的數量`, 請在機會內猜中答案

---

## 範例

舉個例子或許比較清楚, 比如說答案是 1234, 假設玩家猜 1024, 那我就要跟玩家說 `2A1B`, 代表有 2 個數字是位置和值都是對的, 有 1 個數字是位置不對但是值是對的

---

## 思路

1.首先要先生成一組答案, 使用 `random.sample` 來生成一組不重複的四位數

{% highlight python %}
import random

answer = random.sample([0, 1, 2, 3, 4, 5, 6, 7, 8, 9], 4)
{% endhighlight %}

2.接下來要取得玩家猜的值

{% highlight python %}
input_guess = input("請猜出正確的四位數: ")
{% endhighlight %}

3.之後就要開始進入迴圈, 直到玩家猜對為止, 如果猜超過 10 次的話, 就要讓遊戲結束, `message 可以先忽略`

{% highlight python %}
endgame = 0
chance = 10
message = 1

while endgame != 1:

    if chance == 0:
        message = 0
        break

    chance -= 1
{% endhighlight %}

4.將 input_guess 轉成 int 陣列, 才可以跟 answer 比較

{% highlight python %}
user_guess = [int(x) for x in input_guess]
{% endhighlight %}

5.判斷有幾個 B

{% highlight python %}
b = 0

for ges in user_guess:
    for ans in answer:
        if ges == ans:
            b += 1
{% endhighlight %}

6.判斷有幾個 A

{% highlight python %}
a = 0

for x in range(0, len(answer)):
    if user_guess[x] == answer[x]:
        a += 1
{% endhighlight %}

7.一個數字只能是 A 或 B, 不能同時是 A 和 B, 所以要扣掉多的 B

{% highlight python %}
b -= a
{% endhighlight %}

8.如果 A 有 4 個, 表示猜對了, 遊戲結束

{% highlight python %}
if a == len(answer):
    endgame = 1
    continue
{% endhighlight %}

9.印出結果還有剩餘機會

{% highlight python %}
print(str(a) + "A" + str(b) + "B")

input_guess = input("猜錯啦! 剩餘 " + str(chance) + " 次機會: ")
{% endhighlight %}

10.最後印出輸贏的結語, `message = 1 應該要在 while 之前宣告`
{% highlight python %}
message = 1

if message:
    print("恭喜你! 你贏了~")
else:
    print("很抱歉! 你輸了~")
{% endhighlight %}

---

## 結果

![code_result_win](/assets/img/post/20201028/win.png)
![code_result_lose](/assets/img/post/20201028/lose.png)

[完整程式碼 on github](https://github.com/vuncrychen/pythonBasic/blob/master/count_ab_game.py){:target="_blank"}

---

## 筆記

* 轉換成 int 陣列以下兩種寫法都可以

{% highlight python %}
# Method 1
user_guess = [int(x) for x in input_guess]

# Method 2
user_guess = list(map(int, str(input_guess)))
{% endhighlight %}
