---
author: categitau
comments: true
date: 2018-11-16 13:38:13+00:00
layout: post
link: http://categitau.com/success-stories-of-reinforcement-learning/
slug: success-stories-of-reinforcement-learning
title: Success Stories of Reinforcement Learning
wordpress_id: 1917
---

**Tl;dr**

In September 2018, I got the opportunity to attend the [Deep Learning Indaba](http://www.deeplearningindaba.com/) conference that was held in Stellenbosch University, South Africa. Deep Learning Indaba was formed with an aim to strengthen African Machine Learning as well as to increase African participation and contribution to the advances in artificial intelligence and machine learning, and address issues of diversity in these fields of science. One of the lectures that I really enjoyed was on **Success Stories of Reinforcement Learning **where we got introduced to reinforcement learning as well as how it was used to build some pretty awesome computer programs. This lecture was presented by [David Silver](https://en.wikipedia.org/wiki/David_Silver_(programmer)). Professor David Silver Leads the reinforcement learning research group at [DeepMind](https://en.wikipedia.org/wiki/DeepMind) which is an AI company based in London that was acquired by Google in 2014. He was also a researcher on [AlphaGo](https://en.wikipedia.org/wiki/AlphaGo), a computer program that plays the board game Go. You can find other slides and videos from the conference [here.](http://www.deeplearningindaba.com/slides-2018.html)

A [post deep learning Indaba meet-up](https://medium.com/nairobiai/in-the-spirit-of-masakhane-post-deep-learning-indaba-nairobi-5ee452e49d0d) was organized here in Nairobi, Kenya to explore the latest that was discussed during Deep Learning Indaba 2018 and was hosted by [Nairobi AI](https://www.meetup.com/NairobiAI/events/254798950/). I decided to speak on David Silver's presentation, which then forced me to do some more research on the topic. This is what inspired this blog post.

In one of my previous [posts](http://categitau.com/introduction-to-supervised-learning/), I introduced Machine Learning and talked briefly about the two most common types of Machine Learning which are **Supervised Learning** and **Unsupervised Learning**. There's also **Reinforcement Learning** which I've never touched on mainly because I had very little knowledge on the topic and It's rarely used. In this post, I will introduce you to Reinforcement Learning and also look at how It's being applied. In simple words, how robots will take over the world *chuckles*.




# **Reinforcement Learning(RL)**


[Reinforcement Learning](https://en.wikipedia.org/wiki/Reinforcement_learning) is said to be the true hope of Artificial Intelligence because of the immense potential that it possesses. Reinforcement Learning is learning what to do based on the environment and how to map the situations into actions. The success is measured by a scalar reward signal. The learner is not told which actions to take but instead must learn or discover the actions which will yield maximum reward.

Let's try and understand this better using a good example I came across while reading **James Clear's** Book [Atomic Habits](https://jamesclear.com/atomic-habits):

In his book he mentioned a psychologist named [**Edward Thorndike**](https://en.wikipedia.org/wiki/Edward_Thorndike) who conducted an experiment to study the behavior of animals, and he started by working with cats. He would place each cat inside a device known as a puzzle box. The box was designed in such a way that the cat could escape through a door by some simple act such as pulling a loop of cord, pressing a lever, or stepping on a platform. Once the cat is able to open the door, it could dart out and run over to a bowl of food. In the beginning, the animals moved around the box at random trying to find a way out. But as soon as the lever had been pressed and the door opened, the process of learning began. Gradually, each cat learned to associate the action of pressing the lever to escape. The more trials he made the less time it took the cats to escape. From his studies, Thorndike described the learning process by stating "behaviors followed by satisfying consequences (rewards) tend to be repeated and those that produce unpleasant consequences (punishments) are less likely to be repeated".

Let's try to formalize the above example. The problem being solved in this example is **opening the box. **Where the cat here is an **agent** trying to manipulate the** environment**(which is the box) by taking **actions** like sticking their paws through openings, poking their nose into the corners etc and tries to go from one** state** (each movement it takes) to another. The cats get a **reward** (food) when it accomplishes the task of opening the box and would not be able to get to the food (**punishment**)when it's unable to open the box. This is a simplified description of reinforcement learning.

[caption id="attachment_1924" align="aligncenter" width="676"]![](http://categitau.com/wp-content/uploads/2018/11/reinforcement-learning-fig1-700-700x270.jpg) Figure1 : The structure of Reinforcement Learning[/caption]




# **Deep Learning(DL)**


[caption id="attachment_1925" align="alignleft" width="298"]![](http://categitau.com/wp-content/uploads/2018/11/images.jpeg) Figure 2: Multi-layered Neural Networks in Deep Learning[/caption]

We can’t talk about Reinforcement Learning without getting into Deep Learning. DL is defined as a general-purpose framework for representation learning. An agent , given an objective, learns from some representations that achieve the objective using minimal domain knowledge. It allows us to train an agent to predict outputs, given a set of inputs. For example, you might train a deep learning algorithm to recognize cats on a photograph. You would do that by feeding it millions of images that either contain cats or not. The program then establishes patterns by classifying and clustering the image data. These patterns will then inform a predictive model that is able to look at a new set of images and predict whether they contain cats or not based on the model that was created using training data.

Deep Learning algorithms do this through multilayered neural networks which mimic the network of neurons in our brain. Each layer would process something different like detecting the eyes of the cat, the other layers detects the shape of the nose and so on.

This is different from RL which is an autonomous, self-teaching system that essentially learns by trial and error and not from inputs.




# **Deep Reinforcement Learning**


Deep RL is a combination of both RL and DL, using Q-Learning as its base. **Q-****learning** is one of the primary reinforcement learning methods which does not assume that the agent knows anything about the state-transition and reward models. However, the agent will discover what are the good and bad actions by trial and error. In RL, the agent chooses its actions by consulting its mental model, let's call it its [Q-table](https://itnext.io/reinforcement-learning-with-q-tables-5f11168862c8). This is a simple lookup process that answers the question: "When I am in <some state>, what is the best action to take?". Deep Learning comes into play when the environments where the state-action space is so large and it no longer becomes feasible to store all (state-action). So, what you can do is create a neural network that e.g predicts the reward for an input(state, action). So what you have is a Neural Network that predicts the Q-value(_value over state-action pairs_), based on the input(state, action). This way is more tractable than storing every possible state-action.


# **Deep Reinforcement Learning in Practice**


Deep Reinforcement Learning uses neural networks to represent the following:



 	
  * **Value function(**checks how good a state is) - Represents how good is a state for an agent to be in. It is equal to expected total reward for an agent starting from state _s_. The value function depends on the policy by which the agent picks actions to perform.

 	
  * **Policy(**The way an agent chooses an action) - The way by which the agent chooses which action to perform is named the agent **policy** which is a function that takes the current environment state to return an action.

 	
  * **Model - **Model is of course the model that's used to train the agent.


The choice of Optimization Algorithms and Loss Functions for a deep learning model plays a big role in producing optimum and faster results.

**Optimizing loss function - **In most learning networks, error is calculated as the difference between the actual output and the predicted output. The function that is used to compute this error is known as Loss Function. For accurate predictions, one needs to minimize the calculated error. In a neural network, this is done using back propagation. The current error is typically propagated backwards to a previous layer, where it is used to modify the weights and bias in such a way that the error is minimized. The weights are modified using a function called Optimization Function. Thus, **loss functions** are helpful to train a neural network. Given an input and a target, they calculate the loss, i.e difference between output and target variable.

In recent years, we’ve seen a lot of improvements in this fascinating area of research. The following are some of the successes of Reinforcement Learning.


## **Success story #1: TD-Gammon**


[caption id="attachment_1928" align="aligncenter" width="428"]![](http://categitau.com/wp-content/uploads/2018/11/12-Figure2-1-700x936.png) Figure 3: Illustration of TD Gammon's Neural Network[/caption]

[TD-Gammon](https://en.wikipedia.org/wiki/TD-Gammon) is a game learning program consisting of a neural network that is able to teach itself to play backgammon solely by playing against itself and learning from the results. TD-Gammon consists of a simple three-layer neural network trained using a reinforcement learning technique known as[ TD-Lambda](https://webdocs.cs.ualberta.ca/~sutton/book/ebook/node74.html) or [**Temporal Difference Learning**](https://en.wikipedia.org/wiki/Temporal_difference_learning). The neural network acts as a “value function” which predicts the value, or _reward_, of a particular state of the game for the current player. During training, the neural network iterates over all possible moves for the current player and evaluates each valid move and the move with the highest value is selected. Because the network evaluates moves for both players, it’s effectively playing against itself. Although TD-Gammon has greatly surpassed all previous computer programs in its ability to play backgammon, that was not why it was developed. Rather, its purpose was to explore some exciting new ideas and approaches to traditional problems in the field of reinforcement learning. You can read more about it [here](http://www.bkgm.com/articles/tesauro/tdl.html).


## **Success story #2: DQN in Atari**


[caption id="attachment_1930" align="aligncenter" width="676"]![](http://categitau.com/wp-content/uploads/2018/11/rl-700x505.png) Figure 4:Structure of Deep Reinforcement Learning in Atari Games[/caption]

Deep Q-Network (DQN) is the first deep reinforcement learning method proposed by DeepMind and used in [Atari games](https://en.wikipedia.org/wiki/Atari_Games). These are the video games we used to play before play stations and Xbox came through :). The **State** is the current situation that the agent(your program) is in. Which is the current frame in your Atari game. An action is a command that you can give in the game in the hope of reaching a certain state and reward. In the case of Atari games, actions are all sent via the joystick. Rewards are given after performing an action, and are normally a function of your starting state, the action you performed, and your end state. The goal of your reinforcement learning program is to _maximize long term rewards_. In the case of Atari, rewards simply correspond to _changes in score._



https://youtu.be/p4Kem0wQoHs



In late 2013, DeepMind achieved a breakthrough in the world of reinforcement learning: using deep reinforcement learning, they implemented a system that could learn to play many classic Atari games with human (and sometimes superhuman) performance. The computer program has never seen this game before and does not know the rules. It learns by deep reinforcement learning to maximize its score given only the pixels and game score as the input. You can read more about this in the following paper by DeepMind:[ Playing Atari with Deep Reinforcement Learning](https://www.cs.toronto.edu/~vmnih/docs/dqn.pdf). There's also an article that I stumbled onto on how to Build your own deep reinforcement learning program that plays the Atari game which you can get [here](https://becominghuman.ai/lets-build-an-atari-ai-part-1-dqn-df57e8ff3b26).

**Deep Q Network** can also be used to model the probability that one user may click on one specific piece of news. Under the setting of reinforcement learning, the probability for a user to click on a piece of news (and future recommended news) is essentially the reward that our agent can get.


## 




## **Success story #3: Deep RL in Robotics**


https://youtu.be/hx_bgoTF7bs

https://youtu.be/jwSbzNHGflM


## **Success story #4a: Alpha Go**


[caption id="attachment_1933" align="aligncenter" width="602"]![](http://categitau.com/wp-content/uploads/2018/11/main-qimg-525c3d41f153eb29ef439364cdb3ac3a.png) Figure 5:Board game Go[/caption]

Alpha Go is a computer system developed by Google [DeepMind](https://en.wikipedia.org/wiki/DeepMind) that can play the game Go. The game of Go starts with an empty board. Each player has an effectively unlimited supply of pieces (called **stones**), one taking the black stones, the other taking white. The main objective of the game is to use your stones to form territories by surrounding vacant areas of the board. It is also possible to capture your opponent's stones by completely surrounding them. AlphaGo is the first computer program to defeat a world champion at Go. **Google DeepMind's Challenge Match**, was a five-game Go match between 18-time world champion[ Lee Sedol](https://en.wikipedia.org/wiki/Lee_Sedol) and[ AlphaGo](https://en.wikipedia.org/wiki/AlphaGo) played in[ Seoul](https://en.wikipedia.org/wiki/Seoul), South Korea between 9 and 15 March 2016. AlphaGo won all but the fourth game.(There's still hope for humanity). DeepMind went ahead and created an [Alpha Go movie](https://www.youtube.com/watch?v=8tq1C8spV_g&feature=youtu.be) based on the game it played against the Go world champion Lee Sedol. Everyone should watch!

[caption id="attachment_1940" align="aligncenter" width="676"]![](http://categitau.com/wp-content/uploads/2018/11/Screenshot-from-2018-11-16-14-12-22-700x355.png) Figure 6: Training AlphaGo[/caption]

Alpha Go utilized two deep neural networks:



 	
  * **Policy Network(output move probabilities)** - The policy network was first trained using **Supervised Learning** to accurately predict human expert moves and was subsequently refined by policy-gradient reinforcement learning. While the Supervised Learning policy network is good in predicting the most likely moves, Reinforcement Learning helps with the prediction of the best possible winning moves.

 	
  * **Value Network(outputs a position evaluation)**  - This is the final stage of training which involves estimating the probability that the current move leads to a win




## 




## **Success story 4b: Alpha Zero**


This is the latest evolution of Alpha Go. Alpha Zero is more powerful and is arguably the strongest Go player in history. The game of chess is the most widely-studied domain in the history of artificial intelligence. The strongest programs(Engines) are based on a combination of sophisticated search techniques with expert domain knowledge that have been refined by human experts over several decades. Alpha Zero achieved within 24 hours a superhuman level of play in the games of chess and shogi (Japanese chess) as well as Go, and convincingly defeated a world-champion program in each case. Previous versions of Alpha Go like I had stated, were initially trained on thousands of human amateur and professional games to learn how to play the game Go. AlphaGo Zero, skips the Supervised Learning step and learns to play simply by playing against itself, starting completely from random play.

https://youtu.be/4Sm922Xp5N4




## **Success story #5:  Dota2**


[Dota 2](http://blog.dota2.com/) is a multiplayer online battle arena video game. It is played in matches between two teams of five players, with each team occupying and defending their own separate base on the map. Each of the ten players independently control a powerful character, known as a "hero", who all have unique abilities and differing styles of play. During a match, players collect experience points and items for their heroes to successfully defeat the opposing team's heroes in player versus player combat. A team wins by being the first to destroy a large structure located in the opposing team's base, called the "Ancient".

**Open AI Five **is a team of 5 neural networks that has started defeating amateur human teams at Dota2. The program defeated a human in 2017 and lost to a professional human team in 2018.


### Conclusion


If you've made it this far congratulations! This article has introduced you to to the world of Reinforcement Learning and its application in real world. There are a number of other applications that I haven't mentioned like how Deep Mind was able to create a program that has achieved human-level performance at the game[ **Capture the Flag**](https://deepmind.com/research/publications/capture-the-flag/). RL has also been used in chemistry, where it uses deep learning to plan the chemical synthesis of organic molecules, e.g. drugs, agro-chemicals etc. There's a whole paper on this, you can find it [here](https://arxiv.org/pdf/1702.00020.pdf). As you can see RL can also be applied in other areas other than games. Let me know if you can think of other ways RL can be applied in real world, other than in games.


### Resources


DeepMind's Website - [https://deepmind.com/](https://deepmind.com/)

Deep Reinforcement Learning Demystified -[ https://medium.com/@m.alzantot/deep-reinforcement-learning-demysitifed-episode-2-policy-iteration-value-iteration-and-q-978f9e89ddaa](https://medium.com/@m.alzantot/deep-reinforcement-learning-demysitifed-episode-2-policy-iteration-value-iteration-and-q-978f9e89ddaa)
