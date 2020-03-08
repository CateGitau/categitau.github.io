---
author: categitau
comments: true
date: 2017-09-21 15:50:24+00:00
layout: post
link: http://categitau.com/text-mining-with-r/
slug: text-mining-with-r
title: Text Analysis with R
wordpress_id: 865
categories:
- Data Science
- Tutorials
---

Do you know the most frequently used words on your twitter timeline? Or, the most frequently mentioned tweeps(twitter followers) on your timeline?<!-- more -->

In the last couple of weeks I've been learning a lot on text analysis and Natural language processing techniques and as I was trying to figure out what I'll post on my blog, I thought, why not analyze data from my twitter timeline and write about it?So, here we are. If you'd like to analyze your own twitter data and don't know how to extract it, you can refer to my previous [article](https://categitau.wordpress.com/2017/08/30/twitter-data-mining-101-using-r/).

In this post, I am going to walk you through how I analyzed Twitter text data and built a Word cloud using R.

**Data Cleaning
**

According to estimates, 80% of the available data is unstructured. Data is being produced as we speak, tweet, send texts via Whatsapp and various other activities that we do everyday. Most of this data being generated is not organized in a pre-defined manner and is text heavy. Few examples of this data include : _tweets, posts on social media, chat conversations, reports e.t.c._

Twitter data is highly unstructured since it's an informal way of communication. The data therefore consists a lot of_ 'noise'_. i.e. typos, bad grammar, presence of unwanted content like URLs, Expressions, emojis, Stopwords etc. In order to produce any meaningful insights from text data, It is really important to clean or pre-process it first before getting into analyzing the data.

For this exercise, I first loaded the **tm** library which is a framework for text mining applications in R :

[sourcecode language="r"]

library(tm)

[/sourcecode]

Built a corpus(myCorpus), which is a collection of written texts and specified the source to be a character of vectors.

[sourcecode language="r"]

myCorpus <- Corpus(VectorSource(tweets.df$text))

[/sourcecode]

Never in my life had I thought that I'd come to despise emoticons. If you have ever retrieved data From Twitter or Facebook with R, you might have noticed that while R seems to be able to display some emoticons properly, many other times it does not thus making any further analysis impossible unless you get rid of them. It took me a while to figure out what I was doing wrong. The following code worked for me:

[sourcecode language="r"]
#remove emoticons from corpus
myCorpus <-  tm_map(myCorpus, function(x) iconv(enc2utf8(x), sub = "byte"))

[/sourcecode]

After this step, I then transformed each letter to lowercase before cleaning:

[sourcecode language="r"]

#convert myCorpus into lowercase
myCorpus <- tm_map(myCorpus, content_transformer(tolower))

[/sourcecode]

I then went ahead and removed URLs, hashtags, mentions, RTs, Stopwords etc. Final step was to build a term document matrix. A **Term Document Matrix** is a two dimensional matrix that consists of terms used or that have appeared in a corpus of documents at the rows and the columns consist of these documents. So, each entry(i,j) represents the frequency of the term i in the document j. The code below shows how to create the tdm(term document matrix):

[sourcecode language="r"]

tdm <- TermDocumentMatrix(myCorpus_copy,control = list(wordlengths = c(1,Inf)))

[/sourcecode]



**Frequent Words
**

Getting the frequency of the terms I used on my timeline was quite interesting. The insight I got wasn't really surprising at all. I first inspected the terms with a frequency greater than 50, then created a bar graph to visualize the results with the following codes:

[sourcecode language="r"]

#inspect frequent words
freq.terms <- findFreqTerms(tdm, lowfreq = 50)
View(freq.terms)

#visualize frequent terms
library(ggplot2)

ggplot(df,aes(x = reorder(df$term, +df$freq), y = freq, fill=df$freq)) + geom_bar(stat = "identity") +
scale_colour_gradientn(colors = terrain.colors(10)) + xlab("Terms") + ylab("Count") + coord_flip()

[/sourcecode]

From the bar graph below, we see that the most frequently used word on my twitter timeline is _"haha" _and the tweep I've mentioned most on my timeline is murimikamau.  Interesting right?

![Rplot03](http://categitau.com/wp-content/uploads/2017/09/rplot03.png)

We can also view this data using a Word Cloud. Word clouds are a fun method for visually presenting text data, and are popular for text analysis because they make it very easy to spot word frequencies. The more frequently the word is used, the larger and bolder it is displayed, as we can see from the word cloud I generated below:

[caption id="attachment_1080" align="alignnone" width="696"]![Capture.1](http://categitau.com/wp-content/uploads/2017/09/capture-11.png) Word cloud displaying frequently used terms on my Twitter timeline[/caption]

So cool right? You can also create word clouds based on any shape you'd like(like on my featured Image), also customize fonts and many other cool stuff. You can have a look at different ways you can build your Word Cloud [here](https://cran.r-project.org/web/packages/wordcloud2/vignettes/wordcloud.html) .

Get access to the entire code used for this exercise Including the word cloud on my github account [here](https://gist.github.com/CateGitau/05e6ff80b2a3aaa58236067811cee44e).

Unfortunately, I didn't quite figure out why my wordcloud wasn't displaying all the words shown on the bar graph above. What am I missing here? Let me know in the comments and I'll add it in!

Till next time .. :)
