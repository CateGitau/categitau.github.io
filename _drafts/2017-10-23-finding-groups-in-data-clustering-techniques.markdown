---
author: categitau
comments: true
date: 2017-10-23 14:07:28+00:00
permalink: /posts/2017/03/finding-groups-in-data-clustering-techniques
title: 'Finding groups in data : Clustering techniques'

tags:
  - Data Science
---

In the last couple of months, I got an opportunity to Intern at a startup whose main aim is to _Unleash the best in people _by matching talent with job opportunities using Machine Learning techniques. I was honored to work with a great team and in turn built a tremendous amount of knowledge thanks to them.

This post will give an Introduction to Machine learning and the two main Clustering algorithms I got to learn and that every aspiring data scientist should know.



<!-- more -->

Wikipedia defines Machine Learning as:


<blockquote>A field in computer science that gives computers the ability to learn without being explicitly programmed.</blockquote>


It basically explores the study and the construction of generic algorithms that can learn from and make predictions on data.

There are several prominent applications of machine learning such as:



 	
  * Segmentation of customer behavior for targeted advertising

 	
  * Identification of unwanted spam messages in e-mail

 	
  * Identifying loans that are about to default

 	
  * Prediction of popular election outcomes


Just to mention a few.

Machine Learning algorithms come in different flavors, one commonly used class is _Supervised_ and the other is _Unsupervised._


###      1. Supervised Machine learning Algorithms


Supervised Machine learning methods are those that build models that predict an outcome. An example is determining customer churn or predicting whether a person is likely to default on paying a loan or not. Supervised learning requires that you have a training data set of situations of known outcomes. So, If I want to divide customers into two groups, say - “likely to churn” and “not likely to churn”, then I provide the computer with historical examples of such features (training data) and tell it to assign new data to one of the two groups, that’s supervised.


###      2. Unsupervised Machine Learning Algorithms


Unsupervised machine learning methods are those that don't make explicit outcome predictions, but they discover hidden relationships in the data. For example, you come across a situation where your boss wants to understand customers better so that they can market their products in a better way. This is where unsupervised machine learning comes in. You'll have to find structures in the data or patterns that will help you to group the customers based on what they usually purchase.

An example of a popular unsupervised machine learning algorithm is the **Clustering algorithm**:


<blockquote>_Clustering _is the method of identifying similar groups of data in a data set. Entities that are in the same group are more similar to each other than with the entities in other groups.</blockquote>


One of the stores that take advantage of this technique is_ _[Target corporation](https://en.wikipedia.org/wiki/Target_Corporation)_. _Target is a general merchandise store that sells a wide variety of products, from groceries to clothing, to household furnishings to electronic appliances_. _Target is always learning new ways to market and merchandise products within its stores by studying consumption patterns of customers to figure out what one likes, what you will need and which coupons are most likely to make you happy. They also figured out a way to find out whether you have a baby on the way long before you need to start buying diapers by just analyzing shopping patterns. Awesome right? You can read about how target did this in one of the best books I've read this year [**The Power of Habit - Why We Do What We Do in Life and in Business**](http://charlesduhigg.com/books/the-power-of-habit/)

Enough about that, let's discuss some of the clustering algorithms. The most popular clustering algorithms are: **_K Means clustering_** and _**Hierarchical clustering.**_

**_K_ Means Clustering**

_K_ means is an example of a centroid model, which is an iterative clustering algorithm where the idea of similarity is defined by the closeness of the data point to the center/ centroid of the  cluster. The goal in _K_ means clustering is to take some points lets say, _n_ points and then partition them into _k_ clusters. Where k is any number of groups you'd like. Each group is defined by a point in the center which is known as the mean.

Since humans are visual beings, I'll try to explain how the K- means clustering algorithm works using diagrams:

i) First, K means clustering demands that you specify the number of clusters you'd like to assign to the data points. In this case, I'll use 3(_k=3_).

ii) The algorithm then plants 3 flags (the shapes in blue) or_ means _within the data randomly.

[gallery ids="1383,1384" type="rectangular"]

iii)Clusters are then created by associating every observation with the nearest mean. Partitions are created representing a** [voronoi diagram](https://en.wikipedia.org/wiki/Voronoi_diagram)** which was generated by the _means_. Voronoi diagrams Indicate the areas that are closer to one cluster center/ mean than any other.

[gallery ids="1385,1382" type="rectangular"]

iv) Steps ii and iii are then repeated until we reach the global optima.

Now that you're done clustering. The next step would be trying to understand what those clusters mean.

**Hierarchical clustering**

Hierarchical clustering is an example of a connectivity model where the data points that are closer in data space, exhibit more similarity than those that are farther away.

Hierarchical clustering follows two approaches:

Agglomerative approach - This is a "bottom-up" approach where the data/ population is classified into different clusters first and aggregating them as the distance decreases or as one moves up the hierarchy.

Divisive approach - This is a "top-down approach" where the data or population is classified as one single cluster and then partitioned recursively and divided into smaller clusters as the distance decreases or as one moves down the hierarchy.

[caption id="attachment_1396" align="alignnone" width="518"]![Capture](http://categitau.com/wp-content/uploads/2017/10/capture.png) Dendrogram[/caption]

A good example of hierarchical clustering might be the standard plant taxonomy where the plants are first classified by family then genus, species etc.

in R there's a function **_hclust()_** that takes an input as a distance matrix, which records the distances between all pairs of the points in the data then returns a **_dendrogram. _**Remember me talking about some kind of dendrogram in this [post](https://categitau.wordpress.com/2017/03/28/ntw2017-day-1/)? Well, now I have a good understanding of what it's all about! :-)


### **Conclusion**


In this post, I have given and introduction on the two most popular clustering algorithms that a data scientist should know. One of the soft skills that a data scientist should have is being able to communicate hard things using simple words that people can understand. This is one of the skills that I thought I'd practice on in this post, which explains why there wasn't any code. Next time I'll try to do a post on some Structured Machine learning algorithms as well.

Any feedback is welcome.

Till next time !


### **References**


_**Machine Learning in R By Brett lantz** - __[https://www.packtpub.com/big-data-and-business-intelligence/machine-learning-r-second-edition](https://www.packtpub.com/big-data-and-business-intelligence/machine-learning-r-second-edition)_

**_Wikipedia_** -[https://en.wikipedia.org/wiki/Machine_learning](https://en.wikipedia.org/wiki/Machine_learning)

[https://en.wikipedia.org/wiki/K-means_clustering](https://en.wikipedia.org/wiki/K-means_clustering)

[https://en.wikipedia.org/wiki/Hierarchical_clustering](https://en.wikipedia.org/wiki/Hierarchical_clustering)

_**Practical data science in R by Nina-Zumel and John Mount-**_[https://www.amazon.com/Practical-Data-Science-Nina-Zumel/dp/1617291560](https://www.amazon.com/Practical-Data-Science-Nina-Zumel/dp/1617291560)

_**An Introduction to Clustering and different methods of clustering -**_[https://www.analyticsvidhya.com/blog/2016/11/an-introduction-to-clustering-and-different-methods-of-clustering/](https://www.analyticsvidhya.com/blog/2016/11/an-introduction-to-clustering-and-different-methods-of-clustering/)

_**Data Smart: using Data Science to transform information into insight By John W.Foreman**_ -[https://www.amazon.com/Data-Smart-Science-Transform-Information/dp/111866146X](https://www.amazon.com/Data-Smart-Science-Transform-Information/dp/111866146X)
