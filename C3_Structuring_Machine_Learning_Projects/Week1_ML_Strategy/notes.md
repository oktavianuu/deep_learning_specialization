# ML Strategy

## Setting up Goal

### 1. Choose one single evaluation metric

By using only one evaluation metric, we will not be confused by the results of multiple measurement results. For example imagine we have two models, A and B. We use precision and recall to measure our models accuracy. Model A precision is 95%, and recall 90%. Model B precision is 98% and recall 85%. By looking at the results, it is not effective since one model has higher precision than the other model but has lower recall. It is going to be more effective if we just use one single evaluation metric to measure the accuracy of our model. The metric that measures both precision and recall into a single number of evaluation metric. By looking only at single evaluation metric, it is easier for us to pick one best model, the one with the lowest error.

### 2. Optimizing and satisficing metric
When evaluating models, we sometimes want to measure another variable, for example how much time the model need to produce result. 
In this case, we care about how accurate and how fast our model is. We want to maximize the accuracy of the model with satisfying time. This means that the model's predictions need to be as accurate as possible. And the time needed to predict as satisfying as possible. Therefore, the accuracy becomes the optimizing metric, and time becomes the satisfying metric. To achieve that, we set threshold to the satisfying metric. Let say we want our model produce a result in <= 100 ms. By this rules, we will pick the model with highest accuracy as long as the running time < 100 ms. 

### 3. Setting the dataset
When preparing the dataset, which is consisting of the dev and test set, both must come from the same distribution. The data in the test set must also exist in the dev set. We don't want to train and optimizing our model on the dev set, only to find out that the data in the test set is different from the data in the dev set. If our model never see the data, it can never make accurate predictions. The model need to see the data from the same distribution.

### 4. The size of training, dev and test set.
People used to divide the data by 70:30 for training and test set respectively. With the amount of data we (much more data), people usually do 98:1:1 for training, deve, and test set respectively.

### 5. When to change dev set and evaluation metric?
When the result does not satify us.

## Comparing to Human Level Performance
### 1. Why comparing to human?
Human are good at doing things, meaning that it can be used as baseline. After reaching human level performance, model usually reach plateau and never really reach or surpass bayes optimal error.

### 2. Understanding human level performance
Human level performance can be divided into several levels; typical humans, intermediate between typical human and expert, and expert level performance. The proxy for baseline depends on us to choose whether to use typical human, intermediate or expert level for baseline. 
One thing to remember is that once we reach human level performance, naturally, the progress will slowing down. For specific task that require specific skill, humans level is not far from bayes optimum error.

### 3. Surpassing human level
Computer tend to be good in surpassing human level performance on strutured data. For example, predicting loan approvals, online advertising, logistics and product recommendations. This is caused by the amount of data related to those task are stored in a database and rarely seen by humans. But extremely accessible for computers. Humans are much better at natural perception tasks, such as recognizing images, audio etc.

### 4. Improving model performance
When trying to improve model performance, we look at its bias and variance. If the bias is higher, then we work on reducing the bias. Otherwise, we need to reduce the variance.
