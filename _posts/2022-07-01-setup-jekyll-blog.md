---
layout: post
title: "還原 Jekyll 部落格環境"
date: 2022-07-01 13:46:45
image: '/assets/img/post/'
description: 僅獻給重灌時的我
tags:
- 重灌
- Jekyll
- npm
- nodejs
- n
categories:
- 重灌筆記
twitter_text: 僅獻給重灌時的我
---

這篇文章是紀錄給我自己看的，內容是重灌之後如何把原本的部落格環境弄起來。

# Step 1. Install dependencies

{% highlight bash %}
sudo apt install npm nodejs

sudo npm install -g n

sudo npm install -g gulp

sudo n 11.15.0
{% endhighlight %}

# Step 2. Install Jekyll

{% highlight bash %}
sudo apt-get install ruby-full build-essential zlib1g-dev

echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc

echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc

echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc

source ~/.bashrc

gem install jekyll bundler
{% endhighlight %}

# Step 3. npm install

Clone your blog.

{% highlight bash %}
cd rykersun.github.io/

npm install
{% endhighlight %}

done.
