---
author: categitau
comments: true
date: 2018-04-13 06:00:23+00:00
layout: post
link: http://categitau.com/introduction-to-supervised-learning/
slug: introduction-to-supervised-learning
title: Classification in Supervised Learning - All you need to know!
wordpress_id: 1774
categories:
- Data Science
- Machine Learning
- supervised learning
---

In one of my previous posts, I introduced [Machine Learning](https://en.wikipedia.org/wiki/Machine_learning) and talked about the two most common types of learning which are **supervised learning** and **unsupervised learning**. I also went ahead and explained some algorithms used in unsupervised machine learning. If you need to bethink yourself, you can find the post [here](http://categitau.com/finding-groups-in-data-clustering-techniques/).

<!-- more -->

In this post, I'll get deeper into [Supervised Learning](https://en.wikipedia.org/wiki/Supervised_learning) with a focus on [Classification Learning(Statistical Learning)](https://en.wikipedia.org/wiki/Statistical_classification) which is one of the two supervised learning problems. Let's first start by reminding ourselves what supervised machine learning is.


### Supervised Machine Learning


**Supervised machine learning** is a type of machine learning algorithm that uses a known dataset which is recognized as the training dataset to make predictions. The training dataset includes input variables (X) and response variables(Y). From these variables, a supervised learning algorithm builds a model that can make predictions of the response variables(Y) for a new dataset(testing data) that is used to check the accuracy of a model. An example of a supervised learning problem is predicting whether a customer will default in paying a loan or not. The input variables here can be details of the customer such as: airtime used, monthly salary, their credit history etc. The response variables will either be "defaulted" or "paid". With this information, the model is able to learn and given new data(test data), it is able to tell which person is likely to default on paying a loan or not.

There are various supervised learning use cases such as:



 	
  * Predicting customer churn

 	
  * Sentiment Analysis

 	
  * Customer segmentation

 	
  * Gene classification in bio-informatics


Supervised learning includes two categories of algorithms: _regression_ and _classification_ algorithms. There's a significant difference between the two:

**Classification - **Classification is a problem that is used to predict which class a data point is part of which is usually a discrete value. From the example I gave above, predicting whether a person is likely to default on a loan or not is an example of a classification problem since the classes we want to predict are discrete: "likely to pay a loan" and "not likely to pay a loan".

**Regression - **Regression is a problem that is used to predict continuous quantity output. A continuous output variable is a real-value, such as an integer or floating point value. For example, where classification has been used to determine whether or not it will rain tomorrow, a regression algorithm will be used to predict the amount of rainfall.

The rest of this post will focus on classification. I'll dive into regression in a later post.


#### Classification: predicting a class/label


Classification is used to predict a **discrete class or label(Y)**. Classification basically involves assigning new input variables (X) to the class to which they most likely belong in based on a classification model that was built from the training data that was already labeled. Labeled data is used to train a classifier so that the algorithm performs well on data that does not have a label(not yet labeled). Repeating this process of training a classifier on already labeled data is known as "learning".

Some of the questions that a classification model helps to answer are:



 	
  * _Is this a picture of a cat or a dog?_

 	
  * _Is this email Spam or not?_

 	
  * _Is it going to rain or not?_

 	
  * _Is this borrower going to repay their loan?_

 	
  * _Is this post negative or positive?_

 	
  * _What is the genre of this song/movie?_

 	
  * _Which type of gene is this?_




Classification is again divided into three other categories or problems which are: _**Binary classification**,** Multi-class/Multinomial classification** and **Multi-label classification**._





##### **Binary classification**


This is a task of classifying the elements/input variables of a given set into two groups i.e predicting which of the two groups each variable belongs to. Problems like predicting whether a picture is of a cat or dog or predicting whether an email is Spam or not are Binary classification problems.


##### **Multi-class/Multinomial classification**


This is the task of classifying elements/ input variables into one of three or more classes/groups. Contrary to binary classification where elements are classified into one of two classes. Some use cases of this type of classification can be: _classifying news into different categories(sports/entertainment/political)_,_ sentiment analysis;classifying text into either positive negative or neutral_, _segmenting customers for marketing purposes_ etc.

Note that sentiment analysis can either be a binary classification or a multi-class classification depending on the number of classes you want to be used to classify text elements. In binary, one would predict whether a statement is "negative" or "positive", while in multi-class, one would have other classes to predict such as _sadness, happiness, fear/surprise and anger/disgust_.


##### **Multi-label classification**


This classification problem can be easily confused with the multi-class classification but they have a distinct difference. **Multi-label** is a generalization of multi-class which is a single-label problem of categorizing instances into precisely one of more than two classes. In this case, we have more than one discrete classes. Don't panic if you don't understand, here's an example that will help you out:

**Explaining the difference between multi-class and multi-label classification**

Let's take a movie classification problem where we'd like to classify movies based on their rating. A movie might be rated as "G"(general audiences),"PG"(parental guidance) or "R"(restricted) but the classifier is sure that each movie can only be categorized with only one out of those three types of rates i.e a movie can't be both R rated and PG rated at the same time. That's an example of a **Multi-Class classification problem**. However, if we are to classify movies based on their genres, a movie can be both comedy+thriller/romance+horror etc. Here each movie could fall into one or more different sets of genres. therefore each instance/input variable can be assigned with multiple categories. This is therefore a **Multi-Label classification**.

[caption id="attachment_1789" align="aligncenter" width="676"]![](http://categitau.com/wp-content/uploads/2018/04/Classification-700x350.png) First image shows an example of a Multi-labeled movie. Second Image shows an example of an R rated movie notification.[/caption]


#### Classification Algorithms


There are various classification algorithms that are used to make predictions such as:

[**Neural Networks**](https://en.wikipedia.org/wiki/Artificial_neural_network) - Has various use cases. An example is in Computer Vision which is done through c_onvolutional neural networks(CNN). _You can read more on how Google classifies people and places using Computer Vision together with other use cases on a post on [Introduction to Computer Vision](http://symonmk.com/intro-computer-vision/) that my boyfriend wrote.

**[K-NN](https://en.wikipedia.org/wiki/K-nearest_neighbors_algorithm) - **_K-Nearest Neighbors _is often used in search applications where you are looking for "similar" items. One of the biggest use cases of K-NN search is in the development of Recommender Systems.

[**Decision Trees**](https://en.wikipedia.org/wiki/Decision_tree) - Decision trees are used in both _regression_ and _classification_ problems. A decision tree can be used to visually and explicitly represent decisions and decision making. They can be used to assess the characteristics of a client that leads to the purchase of a new product in a direct marketing campaign.

**[Random Forests ](https://en.wikipedia.org/wiki/Random_forest)- **Random Forest algorithms can also be used in both _regression_ and _classification_ problems. It builds multiple decision trees and merges them together to get a more accurate and stable prediction. It can be used in a number of circumstances including _image classification_, _recommendation engines_, _feature selection_, etc.

**[Support Vector Machines(SVM)](https://en.wikipedia.org/wiki/Support_vector_machine) -** This is a fundamental data science algorithm which can be used for both regression or classification problems. However, it is mostly used in classification problems. It has a plethora of use cases such as face detection, handwriting recognition and classification of images just to mention a few.

**[Naive Bayes](https://en.wikipedia.org/wiki/Naive_Bayes_classifier) - **This is a simple and easy to implement algorithm. A classical use case for Naive Bayes is document classification where it determines whether a given text document corresponds to one or more categories. It can be used in classifying whether an email is Spam or not Spam or to classify a news article about technology, politics or sports. I've also previously done sentiment analysis using Naive Bayes. You can find the notes and code [here](https://gist.github.com/CateGitau/6608912ca92733036c090676c61c13cd).


#### Conclusion


If you made it thus far, congratulations! You now have an understanding of what supervised machine learning is together with its two categories with some perception of classification models. You should also be able to create your own use cases where classification models can be used, then group them into either _multi-label_, _multi-class_ and _binary classification_ problems. Building a classification prediction model doesn't end here. As a data scientist your motive is not to just build a predictive model alone, but creating a model which gives high accuracy out of sample data. So, you're done building your classification model using the various algorithms that I have outlined, the next step should be to evaluate its performance and determine if it will do a good job of predicting the target/output variables on new and future data.

In my next post, I'll be going through the various ways of evaluating classification models. Please share your opinions and thoughts in the comment section below!

To more learning:)


#### Reading material


[Machine Learning for Humans:Supervised Learning](https://medium.com/machine-learning-for-humans/supervised-learning-2-5c1c23f3560d) (Medium)




