---
title: A Basic Introduction to Cohort Analysis in R
author: categitau
comments: true
date: 2018-05-29 19:23:33+00:00
permalink: /posts/2018/05/introduction-to-cohort-analysis-in-r

---

"_Just like a doctor has to stay up to date with the latest medical developments, learning never stops for a data scientist. Technology is evolving pretty quickly, so as this field; If you are not passionate about the field and do not enjoy learning, then data science is not for you_." <!-- more -->

Since Last week, I have been reading on a topic called** Cohort Analysis **which I admit, was totally new to me then. Coincidentally, during this time I was also binge watching a TV series known as [Silicon Valley](https://en.wikipedia.org/wiki/Silicon_Valley_(TV_series)).** NB: Spoiler Alert! **In Ssn3 Ep09, a Startup called **Pied Piper** was celebrating its 500,000th app install. Exciting? Imagine your application having those many installs.

[caption id="attachment_1884" align="aligncenter" width="480"]![](http://categitau.com/wp-content/uploads/2018/05/giphy.gif) How most companies celebrate when they see the number of sign-ups into their platform[/caption]

But, is number of installs really a good metric? I don't think so. While it is useful for a company to know how many people have downloaded their application or are on their site, that metric is quite useless on its own. While Pied Piper was hitting the 500,000th install mark, the actual number of active users of the app, as they came to find out later was actually 19,000! Yup! Instead on focusing on the daily active users of the application, Pied Piper was focusing on the number of installs of their product which really doesn't say anything about their product. That kind of metric is known as a vanity metric, which is basically a measure that doesn't matter. With 19,000 active users, clearly there's something they were doing wrong. By using Cohort Analysis, the startup could've figured out the problem way earlier. You can have a look at this [article](https://amplitude.com/blog/2016/06/23/pied-piper-boost-retention) to find out what Pied Piper could've done to improve their retention rate.

In this post we'll look at cohort analysis together with its importance in any business and company. We'll also look at how to perform cohort analysis using R and the famous plot library [ggplot 2](http://ggplot2.tidyverse.org/)!


### What is Cohort Analysis?


[Cohort Analysis](https://en.wikipedia.org/wiki/Cohort_analysis) is the study of how a certain group of people (cohorts) that share common characteristics or experiences behave within a defined time span. These groups of people also known as **cohorts** are usually divided depending on when they initially subscribed to the business or company's service. An example would be a group of users who joined on a particular day or month. This allows companies to see patterns in their data clearly across the life-cycle of a customer as well as explaining customer behavior changes across time by factoring in the date in which the customer was first acquired. There are many other characteristics one can consider besides the user start date such as: _Defining Cohorts based on the sources of registration, be it using Search, Email, Social Network, by campaigns, by the platform or device your users use etc._

In this post, we'll focus on grouping cohorts based on their start date.

This helps to answer questions like;



 	
  * Do users who signed up a year ago use your products the same way/differently than those who signed up last month?

 	
  * Are the old users bringing in more revenue or are the new ones?

 	
  * What is the retention rate of our customers?

 	
  * Is the rate at which we are losing customers getting better or worse?

 	
  * What % of the revenue came from new vs. repeat customers?

 	
  * Where do we lose customers?





### Applications of Cohort Analysis





 	
  * E-Commerce - The firm may be interested in finding out the percentage of customers that signed up in the last two weeks and made a purchase.

 	
  * Software developers - May be interested in finding out the number of users that sign up to their platform after a certain upgrade of their application or when a new feature has been added to the platform. This will help them gauge if it was a right move or the wrong one.

 	
  * Gaming - A gaming industry might be losing revenue but at the same time still be having lots of users signing up. After deep analysis they might find out that the expert gamers who have been using their platform the most(cohort1) bring in more income than the new users coming in, hence will start focusing on making sure the lag time is low and also add more advanced features to the game.

 	
  * Marketing - By the use of cohort analysis, marketers are able to see if their marketing efforts at a certain period made any difference. They could also examine individual cohorts to gauge responses to short-term marketing efforts like email campaigns.

 	
  * Companies can also see how the behavior and the performance of Individual groups of users change day to day, week to week, relative to when they acquired those users.

 	
  * It allows the ability of a company to drill down to the users of each cohort to gain a better understanding of their behavior such as: How many users stopped using their service and how much revenue did they bring in.




### 




### Metrics used in Cohort Analysis


**Monthly Active Users (MAU)**

This is a Key Performance Indicator often used by online games, mobile applications and social networking sites. It is calculated by counting the number of unique users for a 30-day period. For some companies, a user is said to be active by logging in a platform and interacting with the platform, from liking posts, posting something, commenting etc. This metric helps in determining the value of a company and find the number of users who use their platforms and return to the site on a monthly basis. Aside from monthly basis, active users can also be measured daily (daily active user) and weekly (Weekly active user).

**Monthly Recurring Revenue (MRR)**

This is income that a business can count on receiving every single month. This is one of the most meaningful metrics a Software as a Service (Saas) business can measure. MRR not only tells you how much your customers are paying you for subscriptions every month, but also reveals if whether your business growth is sustainable.

**Cost of Acquisition (CAC)**

This is simply the cost of acquiring a new user. Might be through marketing, advertising, holding an event, etc. This is calculated by taking the total marketing cost divided by the number of newly acquired users. For example; if your company spends $100 on marketing and it manages to acquire 10 new users then each user has a CAC of 10. If this new user is not expected to contribute at least $10 during his lifetime as a user, then the effort doesn't make any sense.

**Customer Lifetime Value (LTV)**

This is the value you gain from a user throughout their lifetime. This value has to exceed the cost of acquiring a new user (CAC), otherwise the business may never be profitable. This is calculated up to different periods; could be 12 months(what you make from this client in 12 months), 36 months, etc. LTV = number of orders a customer is expected to make over their lifetime as a user(in recurrence) and multiply it by the company's average contribution margin per order.

You can find more on these metrics in a blog written by a VC fund company known as Samaipata Ventures[ here](https://medium.com/samaipata-ventures/samaipatas-3-step-5-cohort-analysis-b75f534464fa).




### Performing Cohort Analysis in R


Let's assume that we are running an E-Commerce business and we'd like to analyze user retention together with finding out how our users are spending money over time. Here are the stages one should take while performing such an analysis:



 	
  1. Determine the business question that you'd like to answer.

 	
  2. Define metrics that will be able to help you answer the questions you came up with during step1.

 	
  3. Define the cohorts that are relevant and of interest.

 	
  4. Data sourcing, cleaning and exploration.

 	
  5. Create the cohorts and extract data according to cohorts.

 	
  6. Calculate measures.

 	
  7. Analyze results and adjust the parameters.

 	
  8. Present and explain the results.


Ready to get your hands dirty with some code? Click on the image below, which should take you to my Rnotebook where you will learn how to perform cohort analysis using R. There's still room for improving the code, let me know if you have any suggestions.

[![https://nbviewer.jupyter.org/github/CateGitau/cohort_analysis_R/blob/master/Cohort_analysis.ipynb](http://categitau.com/wp-content/uploads/2018/05/patrick-tomasso-208114-unsplash-700x338.png)](https://nbviewer.jupyter.org/github/CateGitau/cohort_analysis_R/blob/4571d30a2b57f9759d3e76403176568ae0d9ee50/Cohort_analysis.ipynb)


