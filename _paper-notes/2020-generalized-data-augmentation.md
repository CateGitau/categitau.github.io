---
title: " Generalized Data Augmentation for Low Resource Translation"
collection: paper-notes
date: 2020-08-15
permalink: /paper-notes/2020-generalized-data-augmentation
---

[Generalized Data Augmentation for Low Resource Translation](https://arxiv.org/abs/1906.03785) - In this paper, they examin how to better share information between related low-resource language (LRL) and high-resource language (HRL).

**Problem** - Translation to or from low resource languages poses challenges for machine translation in terms of data adequacy and fluency.


**Solution** - The solution is to do data augmentation utilizing large amounts of monolingual data. The paper proposes a general farmework for data augmentation in low-resource machine translation(MT) that not only uses target side monolingual data but also pivots through a high resource language (HRL).


Methodology
======

### Data

- Limited sized LRL-ENG parallel dataset<br/>
- Relatively high resource HRL-ENG parallel dataset<br/>
- Limited size LRL-HRL parallel dataset<br/>
- Large monolingual datasets in LRL, ENG, HRL

They augment parallel data through two methods: <br/>
1) Back translating from ENG to LRL or HRL<br/>
2) Converting the HRL-ENG dataset to a pseudo LRL-ENG dataset


Back translating from ENG to LRL or HRL
======

## Typical Back-translation methods

i) ENG-LRL - Where an ENG-LRL system is trained and is then used to translate ENG monolingual data to LRL

ii) ENG-HRL - Train ENG-HRL system then back translate ENG monolingual to HRL

The problem with first scenario is that in a low-resource case, the created LRL data can be of very low quality due to limited size of the training data which could then deteriorate the performance of the LRL-ENG translation performance. As a way to ameliorate this problem, <br/>
The second option is more effective because the quality of the generated HRL data will be higher, and the HRL is close enough to the LRL. This pseudo-HRL-ENG dataset can then be used for joint training with the LRL-ENG dataset.


Converting the HRL-ENG dataset to a pseudo LRL-ENG dataset
======

They propose **"Augmentation via Pivoting"** where they create an LRL-ENG dataset by translating the source side of HRL-ENG data, into LRL.

## Augmentation through pivoting

i) Train HRL-LRL system then convert the HRL of the HRL-ENG dataset into LRL.

ii) Exactly as above except that the HRL-ENG dataset being used here is as a result of back translation where English monolingual data is converted to HRL then the HRL-ENG dataset created is convert to LRL. 

In the following sections, they propose methods to convert HRL to LRL for data augmentation in a more reliable way.

# LRL-HRL translation methods

They experiment with a two-step pivoting method to convert high-resource data to the LRL, making use of the available resources to better approximate the true data distribution of the LRL.

1) **Augmentation with Word Substitution** where they inject low-resource language (LRL) to high-resource language (HRL) sentences through an induced bilingual dictionary to create pseudo LRL sentences.

2) **Augmentation with Unsupervised MT** where they edit these modified sentences from 1) above using a modified unsupervised machine translation framework.

## Augmentation with Word Substitution

### i) dictionary induction

Given an induced dictionary from word-embedding spaces for two highly related languages, we can substitute HRL words with LRL ones and construct a word by word translated pseudo-LRL corpus

To ensure the quality of the dictionary, a word pair is only added to the dictionary if both words are each others' closest neighbors.


### ii) corpus construction

Given HRL-ENG parallel dataset or the HRL-ENG back translated dataset, we substitute words in the HRL with the corresponding LRL ones using the induced dictionary. The words that are not in the dictionary are left untouched.

By injecting the LR words, we convert the original or augmentated HRL data into pseudo LRL, whcih explicitly increases lexical overlap between the concatenated LRL and HRL data.


## Augmentation with Unsupervised MT

The simple word-by-word augmentation process is insufficient to completely replicate actual LRL data. The next step is to further convert the pseudo LRL data into a given version closer to real LRL. Inorder to achieve this, they propose to use UMT(Unsupervised Machine Translation)

Unsupervised MT is done by coupling denoising auto-encoding, iterative-back translation and shared representations of both encoders and decoders.

They propose a new initialization method that is comprised of a sequence of three steps:

i) Use an induced dictionary to substitute HRL words in monolignual HRL to LRL ones producig a pseudo-LRL monolingual dataset<br/>
ii) Learn a joint word segmentation model on both monolingual LRL or the monolingual pseudo-LRL and apply to both datasets.<br/>
iii) Train a NMT model in an unsupervised fashion between the monolingual LRL and the psudo monolingual LRL.


### Corpus creation

Given the word-level augmentated datasets created before, we now use the UMT model trained with the above method to translate the pseudo LRL obtained to get new parallel datasets


## Results

The more distant the source langauge is from English, the worse the performance. A standard UMT model achieves extremely low scores, inicating difficulties of directly translating between LRL and ENG in an unsupervised fashion. Supervised back translating into the HRL helps more than into the LRL.<br/>
Their simple word substitution approach and the modified UMT approach leads to improvements across the board. 
