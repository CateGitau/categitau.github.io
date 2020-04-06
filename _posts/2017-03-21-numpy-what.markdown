---
title: NumPy..What??
author: categitau
comments: true
date: 2017-03-21 19:57:44+00:00
permalink: /posts/2017/03/numpy-what
categories:
  - Data Science

tags:
  - numpy
  - python
---

<!-- more -->In my last post [first things first(https://categitau.wordpress.com/2017/03/15/first-blog-post/) , I made a Data science 'Joke' at the end , Mentioning some weird word **NumPy** .. So, what's **NumPy?**

NumPy stands for Numerical Python. It is one of the many libraries in python used for scientific computations and data analysis. It also provides basic routines for manipulating large arrays and matrices of numeric data. So, no matter what the data is, the first step of making it analyzable is by transforming it into arrays.

There are other Libraries used in python such as:
	
  * **Matplotlib** which is used in plotting graphs

	
  * **Pandas** that are used for structured data operations and manipulations.

	
  * **SciPy** that stands for Scientific Python which is built on Numpy.

	
  * **SciKit Learn** which is used in Machine learning and built on Numpy, Matplotlib and SciPy.

	
  * **Bokeh** for creating interactive plots and data applications on modern web browsers.


...and others, but today I'll just talk about NumPy and just a little bit of Pandas.

The most powerful feature of NumPy is N-Dimensional array. An ndarray (N-Dimensional array) is usually a multidimensional container of items of the same size and type. The number of dimensions in an array is defined by Its shape, which is a tuple of N positive integers that specify the size of each dimension.

Example:

![ndarrays](http://categitau.com/wp-content/uploads/2017/03/ndarrays.png)

NumPy also has various attributes such as _ndim_ (number of dimensions), _shape_(size of each dimension and _size_(the total size of the array):

![attributes](http://categitau.com/wp-content/uploads/2017/03/attributes.png)

You can get more data types on [Understanding Data Types in Python](http://localhost:8888/notebooks/02.01-Understanding-Data-Types.ipynb)

The central feature in **NumPy** is the _array_ object class, arrays are somewhat similar to lists in python, except that every element of an array must be of the same time. i.e. int, Boolean, strings must be the same in every array, but in Python, you can mix it up with lists, strings and Boolean.

NumPy also includes a bunch of convenient functions such as mean(), std() , you can also use these functions on python lists but if your data is in NumPy array, the these functions will be faster.

Some similarities of NumPy arrays and Python Lists are that in both you can access elements by position, you can also access a range of elements e.g. [3:5] and you can use for loops in both.

NumPy's _ndarray_ data structure provides essential features for the type of clean and well organized data. While this feature serves its purpose well, it’s disadvantage becomes very clear when we need more flexibility. Panda, and in particular its S_eries_ and _Data Frame_ objects, builds on Numpy array structure and provides access to these data hacking tasks.

Gosh, I could go on and on about what I know about NumPy, but you can find some great Numpy tutorials out there for you to practice on and learn about them together with other Python libraries. Some tutorials can be found on my [GitHub](https://github.com/CateGitau/Intro-to-Data-Analysis) account. Check them out and also give me a follow if you're on GitHub yourself.

If you don't have NumPy installed, you can go to [http://www.numpy.org/](http://www.numpy.org/) and follow the installation instructions.

Pandas Installation can be found on [Pandas Documentation](http://pandas.pydata.org/). Once it is installed, you can import it and check the version.
