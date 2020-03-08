---
author: categitau
comments: true
date: 2020-01-13 16:18:41+00:00
layout: post
link: https://categitau.com/deep-dive-into-supervised-learning/
slug: deep-dive-into-supervised-learning
title: Deep dive into Supervised Learning
wordpress_id: 2403
tags:
- data science
- machine learning
- supervised learning
---




This is part 2 of my foundations of machine learning series. You can find the other articles listed below:







  * [Part1 - Introduction to Machine Learning](https://categitau.com/foundations-of-machine-learning-part-1/)






## Machine Learning Process







Anyone interested in the field of machine learning already has an overview of how the whole process looks like which usually involves:







  * **Data collection ** - Collecting data that's going to be used to train the model.
  * **Data pre-processing** - Data cleaning and validation, dealing with missing data, formatting and placing the data into the optimal format and extracting new features in the data.
  * **Exploratory analysis** - Understanding how the data looks like and if there are any interesting patterns within.
  * **Training of the model** - Learning takes place
  * **Evaluation of the model** - Testing the models performance.
  * **Tuning **- Fine tuning the model to maximize its performance.






I will not go over the data collection, pre-processing and exploratory analysis stages. We will assume we already have the data and it's cleaned and already preprocessed. 







In this article we're going to get a little deeper into supervised learning and try to understand how models actually learn and how we end up building a good model in the end. 







## Supervised Learning







In my previous post, I talked about supervised learning being the process of learning that consists of the output feature/dependent variable which is to be predicted from a given set of input features/independent variables.







Suppose that I have data about houses which has the attributes: size in square feet and price as shown in the table below:





![](https://categitau.com/wp-content/uploads/2020/01/blog_dia2.png)





Each row [latex]{(i)}[/latex], represents a house. So, given the data above, we can build a program that learns to predict the price of other houses based on its size. The question now is, how? We will denote the size as our input variable **x **and the price as our output variable **y**. 







**[latex]{x^{(i)}}[/latex]** and our output or target variable** [latex]{y^{(i)}}[/latex]**  are known as the **training samples **and the goal is to train a computer using these training samples so that it can learn some function **[latex]{h}[/latex]** that best maps an input **[latex]{x^{(i)}}[/latex]**  to the output **[latex]{y^{(i)}}[/latex] **such that, given a new set of inputs, the function is able to correctly predict the output. This function **[latex]{h}[/latex]** is called the **hypothesis** which is a rule that we come up with to help us predict the price of a house given its features. This hypothesis is usually unknown. The superscript [latex]{(i)}[/latex] here denotes each training sample/row or in this case each house with its attributes.







Most of the time, we come up with the hypothesis by making an assumption about the data which is mostly done when we're exploring our data. If we draw out the relationship between the size of the house and price using the data that we have we end up with the graph below:





![](https://categitau.com/wp-content/uploads/2020/01/blog_dia1.png)





From the graph above, we can assume that our data flows in a linear form i.e as the size of the house increases the price also tends to increase and decide to use the **linear regression algorithm **as our hypothesis. These algorithms that make an assumption about how the data flows are known as** parametric algorithms**. **Non-parametric** algorithms are said to have no assumptions about the underlying data.







Examples of parametric machine learning algorithms include:







  * Linear Regression
  * Logistic Regression
  * Perceptron
  * Naive Bayes






Examples of non-parametric machine learning algorithms include:







  * k-Nearest Neighbors
  * Decision trees
  * Support Vector Machines






Back to our example, we have approximated the output **y** (price) as a linear function of **x**(size) such that: **[latex]  h_\theta(x) = \theta_0 + \theta_1x_1 [/latex] **







**[latex] h_\theta(x)[/latex] **is our predicted **y **and **[latex] \theta[/latex]** are the model parameters.  This is similar to the linear function that takes the form y=mx + c. The model parameters are learned during the training phase.







Identifying the **hypothesis **is usually the first step in building a model. 







Next, we need to come up with a **criteria **which is also known as the **cost/loss function **which ideally tells us how well our model is performing. In this case, how well our model is able to approximate the true price of the house. This loss function is calculated by getting the difference between the true value of [latex] y^{(i)}[/latex] and the predicted value of [latex] y^{(i)}[/latex]. So, if the predictions deviate too much from actual results, the loss function will give a large value. There are different kinds of loss functions used depending on your problem which we will cover as we go through the various algorithms in the coming blog posts.







The next step is the training phase where we use an optimization algorithm known as the **learning algorithm. **This learning algorithm is used to help find the value of the parameters [latex] \theta [/latex] of the function **[latex]{h}[/latex]** that minimize the criteria or loss function. This is where the learning takes place. The most popular optimization algorithm used is **gradient descent**. There's another set of parameters known as the **hyperparameters. **These are values that are specified by the user before starting training. This happens during the tuning phase to improve the performance of the model.







The diagram below shows the overview of the whole process:







![](https://categitau.com/wp-content/uploads/2020/01/blog-1.png)Source:http://cs229.stanford.edu/notes/cs229-notes1.pdf







In the example I have given above, we are trying to predict a continuous variable price. We call this a **regression **problem. If we were predicting a small number of discrete values such as type of house, we call this a **classification **problem.







Building a good machine learning model is an iterative process and our main goal is to build a model that generalizes well on the unseen data. i.e how well the the model performs to new data that it has not seen. Generalization allows the model to make good predictions on data that it has not seen before. 







When we talk about generalization, we often mention the two main causes of poor model performance which is **overfitting **and **underfitting. **







**Overfitting **refers to a model that has learnt the training data a bit too well and performs poorly on unseen data. I like using the example of a student that 'accidentally' comes across answers to an upcoming exam. This student then ends up memorizing the answers but unfortunately, the exam gets changed last minute. It's obvious that the said student will not perform well, since he had not studied the whole topic(didn't generalize) but rather decided to cram answers to a different exam. Same thing that happens when your model overfits. Models also tend to overfit when the complexity of the model is too high compared to the data that it's trying to learn from.







**Underfitting** refers to a model that does not perform well on the training data as well as generalize on new data. This often happens when the model is too simple to learn the data that it is given as input.  The model is said to underfit when the complexity of the model is too less for it to learn the data that it's been given. 







There are various methods that can be used to prevent your model from overfitting or underfitting which I will talk about in more detail in another post. 







So far we have looked at the overall process of modeling, training and evaluating your model. In the upcoming posts, we will get our hands dirty with some of the popular algorithms used in machine learning and code them from scratch to understand exactly what happens behind the scenes, following the same exact steps we've discussed above.







Feel like I've missed a step? Kindly share in the comments bellow. Till next time :) 







## References







[Stanford CS229 Supervised Learning Lecture Notes](http://cs229.stanford.edu/notes/cs229-notes1.pdf). 







[Parametric vs Non-Parametric algorithms](https://chemicalstatistician.wordpress.com/2014/01/14/machine-learning-lesson-of-the-day-parametric-vs-non-parametric-models/)



