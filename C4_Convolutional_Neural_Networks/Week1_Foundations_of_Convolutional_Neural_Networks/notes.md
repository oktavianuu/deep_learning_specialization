# Foundations of Convolutional Neural Networks

## 1 Edge Detection

Edge detection used to detect edge in an image. They could be horizontal or vertical edge. To detect image we apply kernel to that image. After applying the kernel, the ouptut matrix will be produced. For example if we have kernel of 3 x 3 matrix, we apply the kernel to the matrix and produce another matrix. Each numbers in the kernel is multiplied by each number in the matrix based on their posisition then summed. We slide across the imge matrix to produce output. A 3 x 3 kernel applied to a 6 x 6 matrix will produce a 4 x 4 matrix.

We use different filters or kernels to detect horizontal and vertical edges. In deep learning, instead of hand coded the filter by hand, we let the NN to learn from the data and treat for example the 3 x 3 kernel, the 9 numbers in there as parameters; $w_1, w_2, ..., w_9$.

The ouput size of a matrix after applying kernel is $n - f + 1$, with n = the size of the input matrix for example 6 x 6, and f is the kernel size  let say 3 x 3. Then when applied, $6 - 3 + 1 = 4$.

## 2 Padding

Padding refers to the process of adding additional pixel around the original matrix. Padding allows us to produce the same output size with input size. With padding, output matrix will be the different, if we add padding around the input matrix, the ouput will be the same as its input. The formula of the output as follow: $n + 2p - f + 1$, so when we apply 3 x 3 kernel to 6 x 6 matrix with padding=1, then $6 + 2(1) - 3 + 1 = 6$, the size of the output is the same as its input. By doing this, we can keep the original size of our input and preserve all information.

## 3 Strided Convolutions

Refers to how many steps the kernel takes when sliding over the matrix. For example, stride = 1 means the kernel will  not skip any single pixel when scanning over the matrix, but stride = 2 means the kernel will skip one pixel when moving across the matrix.
