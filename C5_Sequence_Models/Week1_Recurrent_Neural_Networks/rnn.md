# RNN Intro

- Normal NN process fixed input and produce fixed output.
- RNN allows us to operate on both sequence of input and output or both at the same time. So we are not only limited to work on fixed size of input and output.

## Example of RNN Model

1. __One to many__

An example of one to many model is image captioning. In image captioning, we give the model an image as an input then it will produce sequence of words describing the image.

2. __Many to one__

An example of many to one is action prediction. In this case, the model is given a sequene of video frames instead of single image and the output is the label of what action happening in that sequence of video. Another example of many to one task is sentiment classification in NLP where the model is given a sequence of words and it classify what sentiment happen based on those words (e.g. positive or negative).

3. __Many to many__

An example of many to many is video captioning where the model looking at sequence of video frames and produce captions describing the video. Another example of many to many task is machine translation where we provide sequence of input words or sentence in indoensian language and the model produce a sequence of words in english, the translation.

3. Variation of __many to many__

In this case, the model produce output every timestep. In this model, the model generates output at every timestep. A real example is video classification on frame level. In this example, the model generates output in the from of classification for every frame, not only the current frame but all frame along the video.

## Why regular convnets insufficient?

Regular convnets only deal with fix input and output. It cannot deal with inputs that are variable in size. Take an example in video captioning, the inputs comes in number of frames (e.g. 10-minute and 10-hour video) and resulting output in variable length. Regular convnets cannot generalize over inputs with different sizes.

## Notation
- $x^{<t>}$     > x is the sequence and t express the position of the sequence. 


## Recurrent Neural Network
The point of RNN is that it can operate on input and ouput with variable size. 
