---
title: " Generalized Data Augmentation for Low Resource Translation"
collection: paper-notes
date: 2020-08-15
permalink: /paper-notes/2020-generalized-data-augmentation
---
**Data augmentation** is the process of getting more data by making some minor alterations to our existing dataset. It is popular in images where changes like flips or rotations are used to create more data.


Generalized data Augmentation for low-resource Translation
======

## Problem
Translation to or from low resource languages poses challenges for machine translation in terms of data adequacy and fluency.


## Solution

The solution is to do data augmentation utilizing large amounts of monolingual data. They propose a general farmework for data augmentation in Low resource Machine TRanslation (MT) that not only uses target side monolingual data but also pivots through a high resource language(HRL)

## Methodology

1) Inject Low Resource Language(LRL) to High Resource(HRL) sentences through an infuced bilingual dictionary to create pseudo LRL sentences

2) Edit these modified sentences from 1) above using a modified unsupervised machine translation framework.


### Data

- Limited sized LRL-ENG parallel dataset
- Relatively high resource HRL-ENG parallel dataset
- Limited size LRL-HRL parallel dataset
- Large monolingual datasets in LRL, ENG, HRL


Typical Back-translation methods
======

i) ENG-LRL - Where an ENG-LRL system is trained and is then used to translate ENG monolingual data to LRL

ii) ENG-HRL - Train ENG-HRL system then back translate Eng monolingual to HRL

The problem with this is that in a low-resource secnario, the created LRL  data in the first option/scenario can be of very low quality due to limited size of the training data which could then deteriorate the performance of the LRL-ENG translation performance.


Augmentation through pivoting
======

Create LRL-ENG dataset by translating the source side of the HRL-ENG dataset to LRL

i) train HRL-LRL system then coonvert the HRL of the HRL-ENG dataset into LRL

ii) use HRL-ENG back translated dataset using english monolingual data and the use that data to convert to LRL


# How to convert HRL to LRL for data augmentation
## LRL-HRL translation methods

### i) dictionary induction

Given an induced dictionary from word-embedding spaces for two highly related languages, we can substitute HRL words with LRL ones and construct a word by word translated pseudo-LRL corpus

To ensure the quality of the dictionary, a word pair is only added to the dictionary if both words are each others' closest neighbors.


### ii) corpus construction

Given HRL-ENG parallel dataset or HRL-ENG back translated dataset we substitute words in the HRL with the corresponding LRL ones using the induced dictionary. The words that are not in the dictionary are left untouched.

By injecting the LR words, we convert the original or augmentated HRL data into pseudo LRL, whcih explicitly increases lexical overlap between the concatenated LRL and HRL data.


# Augmentation with Unsupervised MT

The simple word-by-word augmentation process is insufficient to completely replicate actual LRL data. The next stop is to further convert the pseudo LRL data into a given version closer to real LRL. Inorder to achieve this, they propose to use UMT(Unsupervised Machine Translation)


Unsupervised MT is done by coupling denoising auto-encoding, iterative- back translation and shared representations of both encoders and decoders.

They propose a new initialization mehtod that is comprised od a sequence of three steps:

i) use an induced dictionary to substitute HRL words in Monolignual HRL to LRL ones producig a pseudo-LRL monolingual dataset

ii) Learn a joint word segmentation model on both monolingual LRL or the monolingual pseudo-LRL and apply to both datasets.

iii) Train a NMT model in an unsupervised fashion between the monolingual LRL and the psudo monolingual LRL.


## Corpus creation

Given the word-level augmentated datasets created before, we now use the UMT model trained with this method to translate the pseudo LRL obtained to get new parallel datasets


## Results

The more distant the source langauge is from English, the worse the performance. A standard UMT model achieves extremely low scores, inicating difficulties of directly translating between LRL and ENG in an unsupervised fashion. Supervised back translating into the HRL helps more than into the LRL.

Their simple word substitution apprach and the modified UMT approach leads to improvements across the board. 

