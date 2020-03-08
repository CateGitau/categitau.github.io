---
author: categitau
comments: true
date: 2017-08-30 15:02:53+00:00
layout: post
link: http://categitau.com/twitter-data-mining-101-using-r/
slug: twitter-data-mining-101-using-r
title: Twitter data Mining 101 using R
wordpress_id: 668
categories:
- Data Science
- Tutorials
tags:
- mining
- Text analytics
---

**R** is a tool used widely in data analysis and statistical computing.<!-- more --> To learn data science, one has to choose either R or Python as a starter. I chose to learn both and I use them depending on the project I am working on. However, my love for R is gradually increasing every single day!

So, for this specific task, I decided to use **R** to gain more knowledge on the language. This is a project I did while still in the University just out of curiosity but I just figured out how cool it would be to actually analyze data from twitter. This would've probably been more fun during election period, but we can still have fun getting insights from trending topics on twitter. But first, let me show you guys how I extracted this data.

PREREQUISITES:



 	
  * Already installed R and R Studio.

 	
  * A Twitter account to create your Twitter application so as to be able to extract tweets. You can get instructions on how to get a Twitter application [here](http://docs.inboundnow.com/guide/create-twitter-application/). After getting your consumer key and consumer secret, then you're good to go.


**NB**:Your OAuth settings, i.e. your consumer key and consumer secret, should be kept private and if anyone was to access them they could easily access your twitter account.

After getting your OAuth Keys, we can now get started with installing and loading the R packages necessary for our task. One of the reasons why I love R is the availability of its many packages which are customized to perform various tasks.

Let's install and load the required packages:

[sourcecode language="r"]

#install required packages
install.packages("twitteR")
install.packages("RCurl")
install.packages("httr")
install.packages("devtools")
devtools::install_github("r-lib/httr")

#Load necessary packages
library(twitteR)
library(RCurl)
library(base64enc)

[/sourcecode]

Remember your consumer key, consumer secret, access token and access token secret? Yeah, so this is where we'll require them. Provide these credentials in place of these empty string values that are defined as placeholders.

[sourcecode language="r"]

Access_token <- ""
Access_token_secret <- ""
consumer_key <- ""
consumer_secret <- "" setup_twitter_oauth(consumer_key,consumer_secret,Access_token,Access_token_secret) #the output should be --&gt; [1] "Using direct authentication"

#with no error

[/sourcecode]

With that done, we can start extracting data from twitter!

Let's start by extracting Trending topics in Kenya. The **twitteR **package has **getTrends** function that can be used to extract the twitter trends based on an input parameter (woeid). A [WOEID](https://en.wikipedia.org/wiki/WOEID)(Where On Earth IDentifier) identifies any feature on earth. I used the WOEID for Kenya to extract trending topics from Kenya. You can use this [link](http://woeid.rosselliot.co.nz/) for WOEID lookup.

To extract Trending topics in Kenya, you run the following code:

[sourcecode language="r"]

#Extracting Trends using getTrends Function
KE_WOE_ID = 23424863
current_trends <- getTrends(KE_WOE_ID)

[/sourcecode]

To extract tweets from a certain user using their handle:

[sourcecode language="r"]

tweets <- userTimeline("POTUS", 50)

[/sourcecode]

To extract tweets in a certain Trending topic you use the following code. In my analysis I decided to look into #IEBC:

[sourcecode language="r"]

IEBC_Tweets <- searchTwitter("IEBC", n=100, lang = "en")

[/sourcecode]

There are many other functions that can be used to extract more data from Twitter. If this excites you, you can look into the [smappr](https://github.com/SMAPPNYU/smappR) package that offers many more functions and tools for analysis of twitter data. If you'd like to play around with my code, you can find it [here](https://gist.github.com/CateGitau/d1c2b7d4244eb732b5ed6cad8bcf16f6).

Till next time, keep fit and have fun coding ! :)
