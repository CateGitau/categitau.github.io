---
author: categitau
comments: true
date: 2018-05-14 10:30:46+00:00
layout: post
link: http://categitau.com/dynamic-pricing/
slug: dynamic-pricing
title: What is Machine Learning's role in Dynamic Pricing?
wordpress_id: 1851
categories:
- Data Science
- Machine Learning
- Research
---

Have you ordered an Uber during this rainy season and wondered why the prices fluctuate from time to time?, or when it comes to purchasing a ticket through an airline, the closer you get to the traveling date, the more expensive tickets all of a sudden become? The reason for this is a pricing strategy known as _[**dynamic pricing**](https://en.wikipedia.org/wiki/Dynamic_pricing), _an approach to pricing goods based on **real-time** changes in the market such as demand for certain goods and services, time of purchase, change in certain conditions etc. The keyword here being _real-time_. We're all familiar with the **demand-based variable pricing** an example being the rise in [Matatu](https://en.wikipedia.org/wiki/Matatu) fare prices during peak hours and when there's high demand for them. But where does Machine Learning come in when talking about dynamic pricing?<!-- more -->

Throughout this rainy season, a lot of businesses are adjusting their prices from time to time, from the popular Uber to the Matatus we use on the daily and I could bet that gumboots prices have shot up. These changes in prices especially how Uber does it in real-time got me curious as to how data and Machine Learning is being used by businesses to set flexible prices for products and services. In this post, we'll try to understand dynamic pricing in detail, its importance and use cases together with where machine learning comes in.

There are various different forms of dynamic pricing:



 	
  1. **Peak Pricing** - This is a strategy that is common in transportation businesses. Airlines are a good example. Airlines often charge a higher price to travel during rush hour mostly on weekdays and sometimes on weekends.

 	
  2. **Surge Pricing** - Companies such as Uber respond dynamically to changes in supply and demand in order to price their services differently. Like most of us have noticed, this frequently happens on stormy evenings and nights when more people request for cabs. **Taxify** also not so long ago introduced dynamic pricing to ensure the drivers are encouraged to go online and offer services when the demand is high.

 	
  3. **Pricing based on time of purchase** - Again, airlines frequently use this strategy. The price of a certain class my go higher based on the number of days left to the flight.

 	
  4. **Segmented Pricing** - In this type of dynamic pricing, some group of customers are charged more based on their willingness to pay more for a given service or product.

 	
  5. **Change in Conditions** - Using dynamic pricing strategies, a business can boost profits more under certain market conditions. For example, a restaurant and bar in New York can change the price of a Tequila shot every five minutes based on demand. If more people order one tequila brand, the price of another might drop. Interesting right?


There are a tone of other areas where dynamic pricing can be utilized. Like in Gaming applications, online retail shops, banking, it could also be used to reduce customer churn whereby when your application starts identifying a customer as being likely to churn, it reduces the price of certain products to keep the customer interested.

For many years, retailers have been using what is known as traditional, static, or fixed pricing where a fixed price point is determined and maintained for an extended amount of time. This method becomes difficult when a new product is being introduced into the market and are unable to accurately predict the effect of the changing demand into the price. Retailers may also set the price in accordance to their desired target market. However, the product or service might appeal to a different consumer segment that doesn't agree with their set price thus limiting the amount of products sold.

Recently, [Ebay](https://en.wikipedia.org/wiki/EBay) a giant e-commerce corporation, announced in December 2017, that it will acquire a Canadian data analysis firm **Terapeak** which is good at predicting supply, demand and pricing products so as to give their sellers price guidance and comparisons. You can read more about this [here](https://www.ebayinc.com/stories/news/ebay-signs-agreement-to-acquire-terapeak/).

The Importance of using "big data" and Machine Learning to improve price decision support in business has been rapidly increasing and the urgent need of building models for dynamic price prediction has been raised, bringing together statistical researchers with a business sense to solve modern business problems. Data Mining, Machine Learning and Statistical Methods can be useful in predicting the purchase behaviour of an online customer by selecting an appropriate price range for them based on dynamic pricing.

By obtaining a solution for price prediction for products and services, it will be easier for sellers to sell and enlarge the number of goods or services being sold as well as increase the shopping community. With the flexible prices, retailers can bring in higher profits for each sale made. There are lots of other advantages of dynamic pricing especially in e-commerce businesses.

We'll now look at a competition on **Kaggle** known as the [**Mercari Price Suggestion **](https://www.kaggle.com/c/mercari-price-suggestion-challenge)**_Challenge_**. Mercari is Japan's biggest community-powered shopping application. The purpose of this challenge is to build a system that offers pricing suggestions to their sellers.


### Using Machine Learning to Suggest Product Prices to Online Retailers


The basic Idea here is to find the best price by analyzing product characteristics. I will briefly take you through my thought process for building such a model using the various submissions made on the Mercari Kaggle competition.

Disclaimer: This is just an overview of how Machine Learning can be used to suggest product prices using the Mercari competiton as an example. You can find the various codes to build such a system on the Kaggle kernel and discussion page of the competition. If you're an R fan, you can find a detailed guide to predicting the prices [here](https://www.kaggle.com/jeremiespagnolo/beginner-s-guide-to-mercari-in-r-0-50586/code).

The following diagram shows the framework for building such a model or rather any machine learning model.

[caption id="attachment_1861" align="aligncenter" width="809"]![](http://categitau.com/wp-content/uploads/2018/05/frame.png) Figure:1[/caption]


#### Data Collection


You can get the data set from the Kaggle competition _"Mercari Price Suggestion Challenge". _The following table shows the features provided by Mercari.

[caption id="attachment_1863" align="aligncenter" width="676"]![](http://categitau.com/wp-content/uploads/2018/05/Screenshot-from-2018-05-13-11-45-27-700x315.png) Table:1[/caption]


#### Pre-Processing of the Data


This will involve handling missing values in the data as well as some text-processing on the item-description. A lot of knowledge on Natural Language Processing will be needed here to extract meaningful insights from the item description, as well as cleaning the text data. Preprocessing is also required in order to prepare data sheets for the specific tools for the analysis purpose and the model that's going to be used.


#### Data Exploration


Data Exploration is done to get meaningful information from the data. In this case we could explore the data to find out things like:



 	
  * Price range of the dataset

 	
  * Average price of items

 	
  * Median price

 	
  * The distribution of the price - Here you will notice that the data is heavily skewed and will need to use the log of the prices instead to get a more Normal distribution'

 	
  * Top Brands and their categories

 	
  * Find the words or phrases with high frequency using the combination of words which are referred to as unigrams, bigrams and tri-grams.




#### Feature Engineering


This is the process of using knowledge of the data to create features that will make your machine learning algorithm work. This is a fundamental step in any machine learning problem. Kaggle competition data is usually already split into test and training sets so we'll go right to the modeling.


#### Modeling


For this specific competition it was seen that [XGBoost](https://machinelearningmastery.com/gentle-introduction-xgboost-applied-machine-learning/) also known as extreme gradient boosting was a relatively accurate model to use for this competition as well as RMSLE(Root Mean Squared Logarithmic Error)as the statistical performance indicator. The lower RMSLE, the better the model.

Suggesting product prices to online retailers is just one of the many ways machine learning can be used in Dynamic Pricing. Companies such as Airbnb are using data to build algorithms that take into account things like location, type of property, duration etc to help people set their prices for their location. A lot of ticket companies have also started to dynamically change prices when concerts and games don't sell well.

Machine Learning can also be used to predict the purchase behavior of online customers by selecting an appropriate price range based on dynamic pricing.


#### Conclusion


Dynamic pricing is one of the many applications of Machine Learning that is rapidly growing. Can you think of other areas that can utilize dynamic pricing? Let me know in the comments.


#### References


BEGINNER'S GUIDE TO MERCARI IN R - [0.50586]
[https://www.kaggle.com/jeremiespagnolo/beginner-s-guide-to-mercari-in-r-0-50677](https://www.kaggle.com/jeremiespagnolo/beginner-s-guide-to-mercari-in-r-0-50677)

Walters, Troy.(2017). A Very Extensive Mercari Exploratory Analysis. [https://www.kaggle.com/captcalculator/a-very-extensive-mercari-exploratory-analysis](https://www.kaggle.com/captcalculator/a-very-extensive-mercari-exploratory-analysis)

Joseph Pisani(2016).HOw much for that tequlla shot? [https://apnews.com/eef9b62171c74854a79e619bfe27d4ce/how-much-tequila-shot-price-always-changing](https://apnews.com/eef9b62171c74854a79e619bfe27d4ce/how-much-tequila-shot-price-always-changing)

XGBoost- A Competitve Approach for Online Price Prediction(2018)-[http://programme.exordo.com/mwdsi2018/delegates/presentation/35/](http://programme.exordo.com/mwdsi2018/delegates/presentation/35/)
