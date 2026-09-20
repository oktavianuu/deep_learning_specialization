# ML Strategy

## Error Analysis

### 1. Carrying Out Error Analysis

When our model let say have 10% error, we need to evaluate the dev set and inspect it manually to know the cause of the error. For example in the cat classifier, after we inspect the dev set, our model misclassified certain dogs as cats because they have similar appearance. furthermore, our model misclassified big cat as house cat because they are blurry. By knowing this spesific error, we know what to do with our training set based on the type of error. 

### 2. Cleaning Up Incorrectly Labeled Data

Should we clean up incorrectlu labeled data in the dev set? The answer is depends on how much the incorrectly labeled data contribute to the overall error. For example if a ML system has 10% error, and the incorrectly labeled data is lower than other causes, then we might prioritize to fix that other causes. Then after that we successfully reduced the error down to 2% and if we think that the incorrectly labaled data really affect the result of our model on the dev set, then it might worth our time to fix these data label that are incorrect. 

### 3. Build First System Quickly, then Iterate

When we first time build ML system, just build it quickly and iterate. We do not have to overthink it. Just do it so we can know what is to improve, what errors we encounters and the bias and the variance. Then based on the initial results, we iterate to improve our system. But if we are experince in that field meaning that we already done such project several times, it is good that we build complex system based on our experience. Furthermore, if a problem has many scientific research related to it, for example face recognition, then it is important to refer and build system based on the literature. 

## Mismatch Training and Dev/Test Set

### 1. Training and Testing on Different Distribution

If dataset for traning and for dev/test set comes from different sources which mean that the distribution of the data are different, we should mix all of the data and shuffle them. One better approach is to take some amount of data from dev/test set and put them in our trainin set. By doing this, we feed the target data into our training set. Then we use the rest of the dataset for dev/test set.  We do this because the dev/test set are our target. The data we really care about the model could predict. This approeach make sure that our target will be consistent so that the we can trust the error and make improvement to aim the target better.

### 2. Bias and Variance with Mismatched Data Distributions

How to measure bias and variance if the dataset for training and dev/test set come from different distribution? Well we cannot measure variance if the training and dev set come from different distribution.  One solution for this is to take some of our training set as the training-dev set. So variance is the error gap between training and the training-dev set. Furthermore, the difference between the error of training-dev set and the dev/test set is the measurement of data mismatch problem, as illustrated below:

human level ------------ training error ----------------training-dev error ------------- dev/test error

     			   bias                                    variance                                data mismatch


### 3. Addressing Data Mismatch 

How to address data mismatch? To address data mismatch, we do an error analysis to gain infomration about the error. Then we can work on collecting more training data that are similar to the data in the dev set. Another solution is synthesizing data, meaning we create artificial datasets to be added to the training data. But we need to be careful if we only generate small subset of the data, which overfit the model.

## Learning from Multiple Tasks

### 1. Transfer Learning

Transfer learning is the use of knowledge from other task to solve another task. Let say we have a Neural Network that learned to detect or classify cat, then we use the same network to read scan-image and predict or produce result. This is what we call transfer learning. 

- **When transfer learning make sense?**  

There are three cases where TL make sense. First, when task A and B has the same input, for example images. Second, when the data for task A is larger than the data for task B. Third, when the feature learned from task A useful for task B.

### 2. Multi-task Learning

Refers to a neural networks to do simultanously several tasks. For example, a self driving car has to detect several objects at the same time; pedestrians, road signs, traffic lights, etc. 

- When to use multi-task learning? There are three scenario:
  - When the tasks shared lower level featues. The shared lower level features from one task help the other tasks.
  - When the amount of data for each task is quite similar. for example, we have similar amount of data of pedestrians, road signs, traffic lights, etc.
  - When we can train a big enough NN to do well on all tasks.

## End-to-end Deep Learning

### 1. What is End-to-end Deep Learning

Refers to a system where a system takes input and produce output without processing the input data in multiple stages. Traditional deep learning will process the input in multiple stages. For example for images, it will extract certain features in the first stage, then other certain features in the next stage and so on until it produces result. End to end deep learning bypass those stages. Even though it looks straightforward, we cannot apply it in all cases because end to end dl system need   massive amount of data. Meanwhile the traditional way will just works fine with small dataset.

### 2. Whether to use End-to-end Deep Learning
