---
title: Machine Translation Evaluation Metrics
author: categitau
comments: true
date: 2020-08-08 15:50:24+00:00
permalink: /posts/2020/08/understanding-bleu

tags:
- Machine Translation
- Natural Language Processing
---
{:.no_toc}

**Machine Translation(MT)** is the use of a software to translate text or speech from one language to another. One of the issues in MT is how to evaluate the MT system to reasonably tell us whether the translation system makes an improvement or not. This is a challenge because unlike other machine learning problems where there can be only one correct answer, in MT, given a certain sentence in a particular language to translate, there could be multiple different translations that are equally good translations of that sentence. So how do we evaluate how good our machine translation model is given that there can be more than one correct translations of a particular sentence?

There have been traditional judgement methods like human evaluations which are extensive but tend to be expensive, time-consuming and this involves human labor that cannot be reused. Researchers have gone ahead to create automatic evaluation methods for MT which provide quick and frequent evaluations which correlate highly with human evaluations. Some popular automatic evaluation methods include:

 - BLEU Score
 - NIST
 - Word error rate(WER)
 - METEOR
 - LEPOR

In this article, we will look at some of the popular automatic evaluation metrics that are being used and how they differ from one another.

Here's what we will cover:

1. The generated Toc will be an ordered list
{:toc}

# Introduction

One measures the quality of a translation based on how close it is to a proffessional human translation. So, the closer the machine translation is to a professional human translation, the better it is. To judge the quality of a machine translation, one measures how close it is to one or more **reference** translations according to a numerical metric. These refrences are human translations which are provided as part of the dev or test set. We will be looking at some of these metrics in detail. We'll also identify the drawbacks of some of these metrics and why one is prefered over the other.

# BLEU

**Bilingual Evaluation Understudy(BLEU)** is one of the most popular metrics that's being used to evaluate sequence to sequence tasks such as machine translation.

Let's say we have a swahili sentence and its reference traslations which are various correct ways the sentence can be translated to in to english.

Swahili : Kuna paka kwenye mkeka 

Reference 1: The cat is on the mat<br/>
Reference 2: There is a cat on the mat 

The intuition behind the BLEU score is that a good translation shares many words and phrases with the references. BLEU compares n-grams of the machine translation output which is known as a **candidate** with the n-grams of the reference translations, then count the number of matches, where the matches are position independent. 

## Standard n-gram precision
BLEU metric is based on the presison metric. Precision is computerd by counting up the number of candidate/Machine translated words(n-grams) that occur in any reference translation and divide that by the total number of words in the candidate translation.

Using the example above plus a MT outputs 1 & 2(candidate sentence):

Swahili : Kuna paka kwenye mkeka 

Reference 1: The cat is on the mat<br/>
Reference 2: There is a cat on the mat 

MT Output 1: the cat the cat on the mat<br/>
MT Output 2: the the the the the the the 

calcualting the unigram precision of MT output of 1, we would count the number of unigrams in MT Output 1 that appear in any of the reference sentences then divide that total count with the total number of words in the candidate translation as shown below:

| unigram  |  shown in refrence? |
|---|---|
| the  |  1 |
| cat  |  1|
| the  |  1 |      
| cat  |  1 |                                   
| on  |   1|
| the |   1|
| mat |   1|
| **Total**| **7** |

Therefore, unigram precision = 7/7<br/>
                             = 1.0
If you do the same to MT Output: You will get a unigram precision of 8/8 = 1.0

From this, we notice that the MT Systems can overgenerate "reasonable" words eg.MT Output 2, which results to improbable, but high precision translations. 

The problem with this method is that a reference word should be considered exhaustive after matching candidate/machine translated words identified. This is to mean that if there are only a maximum of two "the" words in the reference words, those are the only counts that should be considered. 

With that in mind, they proposed a modified precision method.

## Modified n-gram precision

It is computed by:
- Counting the maximum number of times a word occurs in any single reference trasnlation
- Clip the total count of each candidate word by its maximum reference count
- Add the clipped counts 
- Divide teh clipped counts by the total(unclipped) number of candidate words

Using out example above, we would now end up with the table shown:

|  unigram | clip count   | total  |
|---|---|---|
| the  |  2 |  3 |
| cat  |  1 |  2 |
| on  |   1|   1|
| mat  |  1 |  1 |
| **Total**  |  **5** | **7**  |

Therefore out modified precision score now becomes:  5/7 = 0.714<br/>.
Compared to precision, we have seen that the modified precision is a better metric. It can also be computed the same way for any n (bigram, trigram etc). 

# BLEU Algorithm
BLEU is computed by combining a number of modified n-gram precisions using the formula below:


\begin{equation}

$BLEU = BP.\exp\left(\sum_{n=1}^{N} w_n \log p_n\right)$

\end{equation}








# METEOR

# LEPOR




