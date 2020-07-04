---
title: How to Evaluate Classification Models
author: categitau
comments: true
date: 2018-04-20 16:39:06+00:00
permalink: /posts/2018/04/evaluating-classification-models

tags:
  - Data Science
  - Machine Learning
  - supervised learning
---

Let's say you have the last 3 years sales data by month and you want to predict the next year's sales (_this is an example of a regression problem_). What you would do is give your machine a sample of this data from the past years and ask it to predict the remainder of the known results you have. Once it does that, you can then compare its prediction to what actually happened to figure out how accurate it was. You will have to run lots of statistical models to try to come up with the most accurate prediction and use that.<!-- more -->

[caption id="attachment_1808" align="aligncenter" width="676"]![](http://categitau.com/wp-content/uploads/2018/04/1WjXHRFcFT-7jPRWJ9Q5Ww-700x326.jpeg) Machine Learning Process[/caption]



In this post, I'll be explaining some of the metrics used to evaluate the accuracy of models with a focus on** Binary Classification** **models** which basically involve classifying the data into two groups e.g. whether or not a customer buys a particular product, based on discrete input variables such as gender, age, location etc. To gain some more knowledge on various classification problems, have a look at my previous post on [ Supervised Machine Learning](http://categitau.com/introduction-to-supervised-learning/).

So, what makes a good classifier and how do we measure its performance?


#### Understanding false positives and false negatives


[caption id="attachment_1780" align="alignright" width="500"]![](http://categitau.com/wp-content/uploads/2018/04/TP.jpg) Figure.1[/caption]

There are two outcomes of the quality of predictions when the model is evaluated that we don't want but occur quite a number of times:



 	
  * **False positive(Type I Error) - **A test result which wrongly indicates that a particular condition or attribute is present. e.g A doctor claiming that a patient is pregnant but is not.

 	
  * **False negative(Type II Error) - **A test result which wrongly indicates that a particular condition or attribute is absent. e.g A doctor claiming that a patient is not pregnant when they actually are.**(See Figure:1)**


**Another example would be:**

_Let's say you've started your own small lending company where you give out small loans to say.. people in the university that pay back the money with some interest after a period of time. In the list you have, there are obviously some people who are your friends and total strangers. Assuming you're just starting out and don't have any credit information about these people you want to lend to so you trust your gut and give out loans to the few you kinda trust abit. So, between the friends and the strangers who do you think would default and who do you think will not default? Here, let's assume you trust your friends more than the strangers so your friends are more likely to pay the loan. Unfortunately, you find out that your friends are the ones that defaulted on paying back. This scenario would fall under **False positive Error**. Since you made a positive claim that your friends will be able to pay back but did not. Whereas the strangers that you thought would default, end up paying. This then is a** False negative Error**, since you thought that the strangers are more likely to default but they ended up paying the loan.
_

With that in mind, we can now look at the various metrics used to evaluate classification models:


#### 1. Confusion Matrix


I've been avoiding the Confusion Matrix for the longest time now simply because I don't like confusion and as the name describes it, I thought it was quite confusing but it really isn't. Hopefully I'll shed some light to people who are like me. A [Confusion Matrix](https://en.wikipedia.org/wiki/Confusion_matrix)  is an N x N matrix that is often used to summarize the performance of a classification model. It helps by giving us a better idea of what out classification model is predicting right and what the type of errors it is making. The number of correctly and incorrectly predicted values are summarized and stored in the table against the actual values as shown:



[caption id="attachment_1806" align="aligncenter" width="673"]![](http://categitau.com/wp-content/uploads/2018/04/Screenshot-from-2018-04-19-10-42-06.png) Figure. 2[/caption]



Let's say we have built a classification model that predicts whether a person is likely to pay a loan or not and our target variables/output variable (Y) are: "delinquent" (positive) and "not delinquent" (negative). The **True Positive **will contain the number of delinquent persons that our model was able to classify correctly. The **True Negative **section(**Figure.2)** will contain all the non delinquent persons that our model was able to classify correctly as non delinquent. The **False Positive** section which is our Type I Error will contain the number of non delinquent persons that our model classified wrongly as being delinquent while the **False Negative**(Type II Error) will contain the number of delinquent persons that our model predicted wrongly as being non-delinquent.

From the Confusion Matrix a couple of metrics are computed which are:



 	
  * **Accuracy - **This shows how often the classifier was correct. You can get this by adding the TP and the TN then dividing it with the total observations.




**Accuracy = (TP+TN)/(TP+TN+FN+FP)**






 	
  * **Precision/Positive Predicted Value(PPV) - **This shows how often the model was correct when it predicted that a person is delinquent.




**Precision = TP/(TP+FP)**






 	
  * **Recall/True Positive Rate/Sensitivity - **This shows how often the model predicted that a person is delinquent when they are actually delinquent.




**Recall/TPR = TP/(TP+FN)**






 	
  * **True Negative Rate/ Specificity - **This shows how often the model predicted that a person is not delinquent when they are actually not.




**TNR** = **TN/(TN+FP)**




So as to create an ordering of observations that "separates" the two classes "delinquent and not delinquent" or "TNR and FNR" a [Receiver Operating Characteristic curve](https://en.wikipedia.org/wiki/Receiver_operating_characteristic) (ROC curve) is used.


#### 2. Receiver Operating Characteristic Curve


This is one other metric that is widely used in the industry. **ROC** curves are meant to give us the ability to assess the performance of the classifier over its entire operating range. It can be used to select a threshold for a classifier which maximizes the true positives while minimizing the false positives. Using the same example I've been using throughout this post, of a model that classifies a person as either a defaulter or a person that pays a loan, using unknown test set, our model can classify it in three ways as shown in the diagram below:

[caption id="attachment_1809" align="aligncenter" width="782"]![](http://categitau.com/wp-content/uploads/2018/04/2.png) Figure.3[/caption]

From the figure above **(Figure.3) **The separation between the defaulters(in red) and those that have paid(in blue) is quite poor since we have a number false positives. The second classification is not as bad since only two people have been classified wrongly. The classification on top is an example of a perfect separation since the defaulters are completely separated from the payers. ROC curves let us quantify these orderings in a graph as shown below:

![](http://categitau.com/wp-content/uploads/2018/04/3.png)

So, for every person classified as a defaulter, we move up the Y axis once and for every person classified as a payer, we move across the X axis once. This gives us the graphs above. The third graph gives an example of a **Zero false positive model** which perfectly classifies the defaulters and payers correctly. The ROC curve is the plot between** sensitivity** and (1- specificity). (1- specificity) is also known as** false positive rate** and sensitivity is also known as **True Positive rate**.

[caption id="attachment_1812" align="aligncenter" width="488"]![](http://categitau.com/wp-content/uploads/2018/04/ROC.png) Graph of the ROC curve[/caption]

From the image above, the diagonal red line is for a random model, so the further your model curve is from the random line, the better. The ROC gives a visual representation of how well the two classes "separate". What if we want to measure how well the classifier separates those two classes? This is were the **Area Under the Receiver Operating Characteristic curve(AUC) ** comes in which is basically the area under the** ROC curve, **shaded green in the diagram below.

![](http://categitau.com/wp-content/uploads/2018/04/4.png)



Other than the metrics I have mentioned above, there are other various metrics used for classification model evaluation that you can go have a look at such as:



 	
  * **Kolmogorov Smirnov test**

 	
  * **Gain and Lifts**

 	
  * **F Scores**




#### Conclusion


I've just gone through a number of metrics used in evaluating classification models. This is an important and crucial part of the whole Machine Learning modeling process. You build a model, get feedback from the metrics, make some improvements on it and continue with this process until you achieve a desirable accuracy. This topic is discussed widely by other people, I'm also just one of those people but hopefully I've done it in a way that is useful for your learning, like it was for me. Credit goes to **_Skyler Speakman_**, a Research Scientist at IBM Africa who's taking a group of people including myself through a Data Science course in[** Moringa School**](https://moringaschool.com/).


#### Reading Sources


[Precision and Recall](https://towardsdatascience.com/model-evaluation-i-precision-and-recall-166ddb257c7b) (Medium)

[Evaluating a Classification Model](http://www.ritchieng.com/machine-learning-evaluate-classification-model/) By Ritchie Ng

[ROC Curve and AUC Metrics](https://medium.com/@andygon/eli5-roc-curve-auc-metrics-ac4fe482f018) (Medium)
