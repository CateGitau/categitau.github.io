---
title: Credit Score Model
author: categitau
comments: true
date: 2017-07-18 13:02:34+00:00
permalink: /posts/2017/07/credit-score-modelintroduction

tags:
- Data Science
- Projects
---

Like I promised, here’s a project I was working on about a month ago.<!-- more -->

A **credit score model** is defined as


<blockquote>“a mathematical model which attempts to provide a quantitative estimate of the probability that a customer will display a defined behavior (e.g. Loan default, bankruptcy or a lower level of delinquency) with respect to their current or proposed credit position with a lender.”</blockquote>


In other words, a credit score assesses an entities ability to pay its financial obligations. They are also predictive when used with advanced tools that evaluate the likelihood of one to pay or default a loan based on some entities.
Usually, the parties that assess the credit worthiness of an entity e.g. Financial Institutions, Banks etc. use their own methodology to measure the credit worthiness and use their own rating scale.

An example of an Interesting company that determines whether you're likely to repay a loan is **_Zestfinance. _**The unique thing about Zestfinance, is the fact that it doesn't necessarily need your financial history when determining whether you're likely to repay a loan or not . It instead uses Machine learning to determine based on many data sources, whether you're eligible. Among the many factors they look at is whether you type your name with proper capitalization or in all caps. According to founder and chief executive of ZestFinance Douglas Merrill,  _"If you fill in your name in all caps, you're a much higher risk"_. Interesting right? or a bit absurd? I don't know.

So credit scoring isn't the only way one can determine the credit worthiness of a person.

There are also a couple of FinTech companies in Kenya that use the credit scoring method to provide loans to people. These are : **Pezesha**, **Tala**, **Branch**, **Umati capital** just to mention a few.

Honestly, I had no idea what this was until a few months ago when I participated in the **DATAHACK4FI**  challenge that was being hosted by Brave Venture labs, Kenya. This was a competition that was aimed to develop Innovative data-driven digital solutions to advance access to financial services for low-income earners in Kenya.

I was approached to be part of a team whose idea was about hacking the problem of getting some working capital for small business owners using a credit score model to determine their credit worthiness and providing loans to small business owners. To my surprise, we came in third!

After the competition I got the chance to play around with MPESA Statements and eventually came up with a simple credit score model. The following diagram shows the steps I took to come up with the model.

![Capture22](http://categitau.com/wp-content/uploads/2017/07/capture22.png)



 	
  * **_Loading the data_**


[code language="python"]

import pandas as pd

df=pd.read_csv("home/creditscore_model/data.csv")

[/code]

The code above should load the data.csv file in a DataFrame 'df'.

You can get an article on Analytics Vidhya that talks about how to read various file formats in Data Science(Using Python) [here](https://www.analyticsvidhya.com/blog/2017/03/read-commonly-used-formats-using-python/).



 	
  * _**Merge**_


[code language="python"]

import pandas as pd

df1 = pd.DataFrame({'A': ['A0', 'A1', 'A2', 'A3'],
'B': ['B0', 'B1', 'B2', 'B3'],
'C': ['C0', 'C1', 'C2', 'C3'],
'D': ['D0', 'D1', 'D2', 'D3']})

df2 = pd.DataFrame({'A': ['A4', 'A5', 'A6', 'A7'],
'B': ['B4', 'B5', 'B6', 'B7'],
'C': ['C4', 'C5', 'C6', 'C7'],
'D': ['D4', 'D5', 'D6', 'D7']})

df3 = pd.DataFrame({'A': ['A8', 'A9', 'A10', 'A11'],
'B': ['B8', 'B9', 'B10', 'B11'],
'C': ['C8', 'C9', 'C10', 'C11'],
'D': ['D8', 'D9', 'D10', 'D11']})

frames = [df1, df2, df3]
result = pd.concat(frames,keys=['M1','M2','M3'])

[/code]

The above code merges the DataFrames df1, df2, and df3. This is how I merged the 50 Individual Financial statements that I used for my model. You can get more info on merging and sorting and concatenate [Here](http://pandas.pydata.org/pandas-docs/stable/merging.html).



 	
  * _**Data Janitoring and Exploration**_


This is just my fancy way of calling data cleaning. There are various ways of ensuring that your data is clean and consistent. In my case, given 50 Financial statements I had to:

 	
  1. Ensure the values in the data are of a certain type. For example the Date and time.

 	
  2. Ensure that there are no missing values in the required fields such as someones National ID, since without it you're not able to determine or identify the person and also transaction types.

 	
  3. Ensure that certain unique values are not repeated such as the National IDs.

 	
  4. Ensure that the data has no errors.


Did you know that most data scientists take about 70% of their project time exploring, cleaning and preparing data? If you didn't, now you know. Data exploration plays a big role in data analysis. No one can build the best predictive models without exploring their data first. A lot of work is done during this step.

 	
  * **_Feature Engineering_**


Feature Engineering is the science of extracting more information from the existing data. No data is being added or being removed, but rather you are trying to make the data you have more useful. Feature engineering is usually done after the data has been explored. You can find more information about it [here](https://www.analyticsvidhya.com/blog/2016/01/guide-data-exploration/#four)

In this case having the financial statements with the Variables : **Transaction Time, Transaction Type, Transactee, Sent Amount, Received Amount**. What more information can we get from this data?

For example, we could try and get the average amount each individual earned that year:

[code language="python"]

#Import libraries

import numpy as np

import pandas as pd

import matplotlib as plt

#load in the dataset

df = pd.read_csv(" ")

#drop the unnecessary columns

df = df.drop("['TransactionId','SentAmount','transactee']")

#view data

df.head()

#remove all the rows in column Receipt that have NaNs

receipt = df.dropna(axis=0, how='any')

#to view the mean

receipt.describe()

[/code]

We could also get some more features such as the months, to find out which months most MPESA transactions done.



 	
  * _**Criteria and Weightages**_


To build the model, you need to come up with various criteria that will determine whether the person is worth getting a loan or not. In this case, I came up with 5 and gave each of them weights that total up to 100% as shown in the diagram below:

![Criteria](http://categitau.com/wp-content/uploads/2017/07/criteria.png)

_**The Methodology used:**_



 	
  1. **Credit History( Taken Credit or Not) -** Those who had taken credit before got a score of **100** and those that had not got a **0. **So, If an individual had taken a loan, from the diagram above we see that the weight given is 35% so we multiply this value with 100. So, they get a score of 35 in this criteria.

 	
  2. **Average Monthly Receipts** **-** Those who have an average monthly income of  <1,000Ksh I gave them a score of **0**, 1K-4K got a score of **10**, 5k-7k got **20** and so on and those greater than 60,000Ksh got **100**. e.g. If there's an individual with an average income of lets say 6,000Ksh, we'd take the weight of 30% multiply it with 20, so their final score here will be 6.

 	
  3. **Loan Amount not paid back** **-** In this case, those that had more loan debt were a higher risk than those that had less loan debt to pay. So, those with <500Ksh in debt got a score of **100**, those with 500-100 got **90** , those with greater than 10,000 got a **0**. Multiply these scores with the weights and you'll get the final scores.

 	
  4. **No. of times a loan is taken** **-** I assumed that those who've borrowed more times are at a lower risk than those who had borrowed less. So, those who borrowed once got a **0**, those who borrowed 1-4 times got a score of **20**, those above 20 times got **100**.

 	
  5. **No. of Organizations a loan is taken -** In this case I assumed that those who borrowed from many organizations might be experiencing financial stress, hence high risk. So those that borrowed from more than 3 organizations got a score of **25**, those who borrowed from 1 got **100.**


After calculating their total scores and adding them, I visualized the results and we can now see the people who are of more risk and others of less risk. The ones with high scores are more credit worthy than those with less scores.

![score](http://categitau.com/wp-content/uploads/2017/07/score.png)

**The End**


