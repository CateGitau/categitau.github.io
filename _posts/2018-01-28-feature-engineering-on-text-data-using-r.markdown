---
author: categitau
comments: true
date: 2018-01-28 18:44:18+00:00
layout: post
link: http://categitau.com/feature-engineering-on-text-data-using-r/
slug: feature-engineering-on-text-data-using-r
title: Feature Engineering on text data using R
wordpress_id: 1602
categories:
- Data Science
- Machine Learning
---

The ability to work with text data is one that I have been able to hone in the past couple of months. With the vast amount of unstructured data that's being generated every day due to the rise of the use of social media platforms, forums, review sites and web pages, this is a skill that every data scientist should possess.<!-- more -->

You'll find that most companies own tonnes of text data which has either been crawled from the Internet, extracted from social media sites, forums and so on depending on the company's aim. This data is usually pretty messy but it holds a lot of information beneath that can help companies gain insights which can be used to boost their businesses. This is where **Natural Language Processing and Feature Engineering** come in.

**Natural Language Processing** or **NLP** in short, is a field of study that focuses on the interaction of human Language and Computers. It consists of processes that are used in analyzing, understanding and extracting useful information from text data in an efficient way.

**Feature Engineering ** is the process of extracting useful information/ features from raw data. In this case, text data.

This post will highlight a technique that can be used to extract features from text. Which is:** Named Entity Recognition****, **using R programming language.


#### **Named Entity Recognition**


Entities are defined as the most important parts of a sentence. Named Entity Recognition is the process of detecting these entities which include location of a place, a person, organizations e.t.c from a string of text.

Example:

**Sentence** - "_My name is Catherine Gitau, I work at Ongair Limited in Nairobi Kenya_."

**Named Entities** -_("Person":"Catherine Gitau"),("Organization": "Ongair Limited"),("Location": "Nairobi Kenya")_

A typical NER model basically goes through the following process:


####  1. Tokenization


This is breaking out texts into units with meaning known as Tokens. In this case, the sentence is broken down into words. If we had a paragraph, we could've broken it down into both sentences and words. This is done by the use of word annotators. Annotators are created by functions which mark the places in the string where words and sentences start and end.

[sourcecode language="r"]
#create annotators for words and sentences

word_ann <- Maxent_Word_Token_Annotator()
sent_ann <- Maxent_Sent_Token_Annotator()
[/sourcecode]




#### 2. Identifying and extracting Noun Phrases


This deals with extracting noun phrases from a text(Entities). Among the various kinds of annotators provided by the package [OpenNLP](https://www.rdocumentation.org/packages/openNLP/versions/0.0-7), is the entity annotator which extracts the various nouns/ names from a document. OpenNLP can find various entities such as times, locations, organizations, persons, percentages e.t.c.

These annotator functions are created the same way the word and sentence annotators were created:

[sourcecode language="r"]

#creates annotators of kind person, location and organization

person_ann <- Maxent_Entity_Annotator(kind = "person")
location_ann <- Maxent_Entity_Annotator(kind = "location")
organization_ann <- Maxent_Entity_Annotator(kind = "organization")
[/sourcecode]





This is just an overview of how Named Entity recognition is done. You can get the rest of the code [here](https://gist.github.com/CateGitau/3eac49225636ffdd7cc9268f4f1c94c6).

Apart from NER, there are other various features that can be extracted from text such as:

**i) Parts of Speech** - Every word in a sentence is associated with a part of speech tag such as verbs, nouns, pronouns,adverbs etc. This defines the usage of a word in a sentence.

i**i) N-grams** -  This is the combination of (N) words together. It is a more informative approach than using Unigrams. I'm more familiar with [Bigrams](https://en.wikipedia.org/wiki/Bigram) which are the combination of two words in a corpus. [Here's](https://gist.github.com/CateGitau/35fe4406005ea7d738c8c4cf02070f71) a code on how to extract Bigrams from a sentence. These may come in handy in speech recognition, Identifying Language and much more.

There are many other features that can be extracted from text other than the ones that I have mentioned above.

To read more about NLP and other features, you can check out the following links :

Analytics Vidhya, Ultimate Guide to understand and implement Natural Language Processing codes in Python -_[https://www.analyticsvidhya.com/blog/2017/01/ultimate-guide-to-understand-implement-natural-language-processing-codes-in-python/](https://www.analyticsvidhya.com/blog/2017/01/ultimate-guide-to-understand-implement-natural-language-processing-codes-in-python/)_

RPubs, Natural Language Processing - _[https://rpubs.com/lmullen/nlp-chapter](https://rpubs.com/lmullen/nlp-chapter)_

**Future Mini Project:** Find out which areas in Nairobi, Kenya have a high frequency of accidents occurring. You can extract data from social media platforms then perform the PoS tagging to identify words such as "accidents", "collide" e.t.c, then perform NER to extract locations mentioned. After this, you can now get the frequency of the locations mentioned. This is a project that is ongoing but is giving me quite a headache. It would be awesome to have some people trying it out though, then compare results. Ping me if you manage to do this :)

Till next time :)
