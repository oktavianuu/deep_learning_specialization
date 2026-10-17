# Neural Style Transfer
Neural style transfer is the process of generating new image by combining the original image and the style we want to generate. For example, we have one original image of a building and we want to generate the same image but in the style of Van Gogh painting. We feed the original image and the Van Gogh image to produce/ generate new image, the same image but in the Van Gogh style.

## What are deep ConvNets learning?
Each layer learn different feature of the image. for example, the first layer learn the vertical or horizontal lines. The deeper the networks are the more complex the feature they learn. 

## Cost Function
Cost function is used to measure how similar the content (original image) with the generated image, so the cost function is J(G) = $\alpha$ x $J_{content}$(C, G) + $\beta$ x $J_{generated}$(G, S). This we want to measure how similar the image between content and generated and between generated and the style image. To find the generated image, we do this:
1. Initialize $G$ randomly, $G$: 100 x 100 x 3
2. We use gradient descent to minimize $J(G)$, $G = G - \frac{\alpha}{2G} * J(G)$

## Content Cost Function 
For content cost function, let $a^{[l](C)}$ and $a^{[l](G)}$ be the activation layer of the image. Then to measure the cost function, we measure the similarity of those activation layer. If both are similar then both images have similar content. The formal formula of content cost function is:
$J_{content}(C, G) = \frac{1}{2}\parallel \alpha^{[l](C)} - \alpha^{[l](G)} \parallel^2$

## Style Cost Function
