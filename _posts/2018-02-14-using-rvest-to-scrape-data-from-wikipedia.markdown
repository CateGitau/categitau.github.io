---
title: Using rvest to scrape data from Wikipedia
author: categitau
comments: true
date: 2018-02-14 13:39:55+00:00
permalink: /posts/2018/02/using-rvest-to-scrape-data-from-wikipedia

---




<blockquote>**Web scraping**, **web harvesting** or **web data extraction** is [data scraping](https://en.wikipedia.org/wiki/Data_scraping) used for extracting data from websites.

_-Wikipedia_</blockquote>


A couple of days ago, I was looking for project ideas on [**medium**](https://medium.com/) and I remembered having stumbled upon this [ post](https://medium.com/@jasonkgoodman/advice-on-building-data-portfolio-projects-c5f96d8a0627)  sometime back which gives advice on _building data portfolio projects_. At the end of the post, the author pitched a project idea on finding out the divorce rates of actors and actresses on Wikipedia. I decided to take up the challenge and see if I can actually scrape the biography pages of actors and actresses on Wikipedia and get any interesting insights then finally build a model around it.

This post will highlight how I got to scraping out this data using R's package **rvest. rvest** is an R package that makes it easy for us to scrape data from the web. So, brace yourselves, technical post ahead!


#### 1. Getting Started




##### Pre-requisites:





 	
  * To get started with web scraping in R you'll obviously need some working knowledge of R programming language.

 	
  * Throughout this post/tutorial we'll be working with the rvest package which you can install using the following code:



[sourcecode language="r"]

install.packages("rvest")

[/sourcecode]


 	
  * Some knowledge of HTML and CSS will also be an added advantage. If you don't have any knowledge on HTML and CSS, worry not, you can use an opensource software known as Selector Gadget. You can simply access it by downloading the Selector Gadget extension from [this](http://selectorgadget.com/) website . Using the extension you can select the parts of any website and get the relevant tags by simply clicking on the part of the website you'd like to scrape out.

 	
  * Finally, you also need Google chrome.


Awesome! Now, let's get started on scraping Wikipedia:


#### 2. Scraping Wikipedia using R





 	
  * 


##### Step 1





After searching through [Wikipedia's website](https://www.wikipedia.org/), I came across [this](https://en.wikipedia.org/wiki/List_of_American_film_actresses) page that has a list of around 1500 american actresses and links to their Wikipedia pages where you can access more information about them.

[caption id="attachment_1667" align="alignnone" width="676"]![](http://categitau.com/wp-content/uploads/2018/02/Capture-700x163.png) List of American actresses[/caption]

below is a screenshot of Jennifer Aniston's Wikipedia page that we're going to scrape. The highlighted part is the part we need in this case. It contains information about the actor's place and date of birth, occupation e.t.c.

[caption id="attachment_1669" align="alignnone" width="1187"]![](http://categitau.com/wp-content/uploads/2018/02/Screenshot-14.png) Highlighted Wikipedia page using Selector Gadget[/caption]

I've actually highlighted that part using [Selector Gadget](https://chrome.google.com/webstore/detail/selectorgadget/mhjhnkcfbdhnjickkkdbjoemdmbfginb?hl=en), which helps in getting the specific CSS selectors that we want to use so as to scrape the page. From the screenshot above, at the bottom middle you can see that our CSS selector for the highlighted biography table is _**".vcard" **_which we are going to need later_**.**_ You could also use Google Chrome's developer tools to look at the HTML behind the biography table as shown highlighted in the screenshot below and copy the CSS selector by right clicking on the html code.

![](http://categitau.com/wp-content/uploads/2018/02/Screenshot-16.jpg)





 	
  * 


##### Step 2





To read the web page into R we will need the rvest package and also the [magrittr](https://cran.r-project.org/web/packages/magrittr/index.html) package which uses the operator **%<%** that takes the output from the left and uses it as the first argument of input on the right.

[sourcecode langauge="r"]

#load in the Rvest and magrittr package

library(rvest)

library(magrittr)

[/sourcecode]

The function we're going to use first is the _**read_html()**_ which is used in reading HTML pages. You do this using the following code:

[sourcecode language="r"]
#read HTML code from the website
webpage <- read_html("https://en.wikipedia.org/wiki/Jennifer_Aniston")
[/sourcecode]

Next, since we have already identified our CSS selector _**"v.card"**_, we use the following code to extract the information
in the biography table.

[sourcecode language="r"]
table <- webpage %<%
html_nodes("table.vcard") %<%
html_table(header=F)
table <- table[[1]]

#add the table to a dataframe
dict <- as.data.frame(table)

[/sourcecode]

We then come up with the table below:
![](http://categitau.com/wp-content/uploads/2018/02/Capture-1.png)

Easy right?


##### Conclusion


So, you've just learnt how to scrape a html table from a web page using R. A lot goes into the code when scraping each bio table from the list of actresses. You can access the code and data I extracted [here](https://github.com/CateGitau/Web-Scraping-in-R).


##### References


Analytics Vidhya, Beginner's guide on web scraping - [https://www.analyticsvidhya.com/blog/2017/03/beginners-guide-on-web-scraping-in-r-using-rvest-with-hands-on-knowledge/](https://www.analyticsvidhya.com/blog/2017/03/beginners-guide-on-web-scraping-in-r-using-rvest-with-hands-on-knowledge/)



Till next time :)


