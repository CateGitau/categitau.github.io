---
author: categitau
comments: true
date: 2020-01-03 23:01:40+00:00
layout: post
link: https://categitau.com/foundations-of-machine-learning-part-1/
slug: foundations-of-machine-learning-part-1
title: Introduction To Machine Learning
wordpress_id: 2385
categories:
- Data Science
- Machine Learning
- supervised learning
- unsupervised learning
tags:
- machine learning
- supervised learning
- unsupervised Learning
---




This article is part of a series that I have decided to put up so as to help myself and others have a deeper understanding on the foundations of machine learning and move from just having a shallow idea about what ML is to being confident enough to have smart ML conversations when attending conferences and not feel some impostor syndrome creep in (speaking from experience) among other things. 







And trust, if you've got the foundations on your finger tips, everything else will be so much easier to understand. This post is meant to give a general introduction to the whole concept of machine learning then later get deeper into each topic in the other parts. 







I feel like I have revisited this introduction to machine learning a lot of times but I wanted structure in this series. So, I will link my other posts if you would like some more information about that particular topic. If you're already familiar with what machine learning is, please feel free to skip through, but you never know, you might learn a thing or two that you didn't know before. 







## So, what is Machine Learning?







<blockquote>**Machine learning** (**ML**) is the [scientific study](https://en.wikipedia.org/wiki/Branches_of_science) of [algorithms](https://en.wikipedia.org/wiki/Algorithm) and [statistical models](https://en.wikipedia.org/wiki/Statistical_model) that [computer systems](https://en.wikipedia.org/wiki/Computer_systems) use to perform a specific task without using explicit instructions, relying on patterns and [inference](https://en.wikipedia.org/wiki/Inference) instead.
> 
> Wikipedia</blockquote>







Breaking this down, machine learning is the study of building generic(generalized) algorithms and statistical models that perform some certain task e.g. predicting the prices of things, using patterns gotten from a set of data without having to write specific code or instructions based on just that one specific problem. 







For example, let's say we have a classification problem that we want to solve using a classification algorithm. This classification algorithm can be used to solve multiple classification problems such as predicting whether an email is spam or not, or whether a certain image is of a cat or a dog without having to change anything in the code. This one algorithm is the same but you use different data that is fed to the algorithm so that it can learn from it. Machine Learning is just a general term that is used to cover all these generic algorithms. If you don't know what a classification algorithm is, just read on and revisit this example when done.







## Kinds of Machine Learning Algorithms







Machine Learning can be broken down into three kinds of algorithms; **supervised learning, unsupervised learning **and** reinforcement Learning**. 







### Supervised Learning







Let's say we work at a bank and someone just walked in and is requesting for a loan. Most traditional banks would look at several factors like previous track record of the person for repaying debts or credit history, one's income, capital etc. All these factors will influence whether or not this person gets a loan. If we've been working at the bank for several years it would be easy for us to just look at their profile and decide to give loan or not based on previous patterns we've noticed. But let's say you get an intern, the intern will have to learn previous patterns so as to be able to correctly classify whether one should get a loan or not. That's basically what we're training the computers to do.







The computers learn this by giving it a set of data that it learns from. This data contains the input features as well as whether a person received a loan or not (output features). So that if a new customer comes in requesting for a loan, it can easily predict the likelihood of that person paying the loan based on the previous data or patterns from the data that was fed to it.







This process of learning that consists of the output feature/dependent variables(whether a person will pay loan or not), which is to be predicted from a given set of independent variables(credit history, age, capital, income, etc) is known as **[supervised learning.](https://en.wikipedia.org/wiki/Supervised_learning)**







Supervised learning can then be divided into two algorithms;** classification **and **regression** algorithms.







**Classification** - The example I gave above of predicting whether or not a person should get a loan is an example of a classification algorithm. It is used to predict which class a data point belongs to, which is usually a discrete value. Some other examples include: 







  * Predicting whether an email is spam or not
  * Predicting whether it's going to rain or not
  * Customer segmentation - classifying your customers into different groups
  * Predicting whether a review is either positive, negative or neutral






Note that a classification problem requires the examples to be classified into one of two or more classes and can be divided further into binary-classification problem, multi-class classification problem and multi-label classification problem. I've written a comprehensive introduction to supervised learning explaining these in a previous post which you can find [here](https://categitau.com/introduction-to-supervised-learning/)







**Regression** - Let's say in our previous example we were trying to predict the amount to give out as loan instead. This problem then becomes a regression problem since we are now trying to predict a continuous quantity which in this case is amount. So, where a classification algorithm can be used to determine whether or not it will rain tomorrow, a regression algorithm will be used to predict the amount of rainfall. Some examples include:







  * Predicting the price of a house
  * Predicting the sales of a particular product
  * Salary estimation






### Unsupervised Learning







Let's now say we didn't have information about whether previous clients defaulted on paying a loan or not. We can however discover hidden relationships in the data that will help us put our customers into groups. Unsupervised machine learning methods are those that don't make explicit outcome predictions, but instead find hidden relationships in the data.







This method has various examples such as:







  * Can be used in customer segmentation
  * Fraud detection
  * Used in building recommendation systems






I have previously written a post on unsupervised learning techniques, if you want some more examples you can read about it [here](http://categitau.com/finding-groups-in-data-clustering-techniques/). Although, I will still revisit most of those techniques in greater detail later in this series.







### Reinforcement Learning







In reinforcement learning on the other hand, we start out with no training/input data and our agent learns what to do based on the environment and how to map certain situations into actions in order to maximize reward. I've written a blog post on the same with some examples of how RL is being utilized in this [post](https://categitau.com/success-stories-of-reinforcement-learning/). 







## Conclusion







Now that we have an idea about what machine learning is and what it's broadly classified into, in the next post, we'll get deeper into supervised learning, the various algorithms used and how we get to train a supervised machine learning model. Make sure to reach out to me [here](https://categitau.com/contact-me/) if you have any questions, or follow me on  [@categitau_](https://twitter.com/categitau_) or on [linkedIn](https://www.linkedin.com/in/cate-gitau/) . Till next time :)  









