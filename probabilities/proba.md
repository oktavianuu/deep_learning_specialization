We will always deal with uncertainty in deep learning even in life. For example, we can never achieve perfect accuracy in classification due to **_aleatoric uncertainty_** also called **_intrinsic_** or **_stochastic uncertainty_**, simply called _noise_. The prediction we made arises from observing data of finite size. The more data we observe the more we are able to predict but we will never achieve perfect accuracy. This prediction uncertainty is called **epistemic uncertainty**, comes from the Greek word *episteme*, which means knowledge, sometimes called ***systematic uncertainty***.

Two kind of uncertainty:

- **epistemic** -> uncertainty caused by the finite number of data.
- **aleatoric** -> uncertainty caused by noise comes from the data itself, the way we measure it, the tools we used, etc.
- To make more accurate prediction we need to reduce *epistemic ,* meanwhile the noise, aleatoric always comes with data.
- The level of both uncertainties depends on the domain, they are not fixed. In one domain, one kind of uncertainty is bigger, in other domain, it is smaller.

#### Why noise arises?

The answer is because we only able to observe partial information of the world. This means to reduce noise, we need to gather more data so we can see more of them. The more we see, the less noise. 

#### If we cannot achieve perfect prediction due to those uncertainties, then what to do?

Those two kinds of uncertainty can be handled using the framework of probability theory.
