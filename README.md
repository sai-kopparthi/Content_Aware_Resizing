# Content_Aware_Resizing
I have implemented the [Content aware resizing](http://graphics.cs.cmu.edu/courses/15-463/2012_fall/hw/proj3-seamcarving/imret.pdf) paper.

A seam is a connected path of low energy pixels in an image. This is an image with one horizontal and one vertical
seam. 
![image](https://github.com/sai-kopparthi/Content_Aware_Resizing/blob/master/VerticalAndHorizontalSeam.png)

In the middle the energy function used in this example is shown (the magnitude of the gradient), along with the vertical and horizontal
path maps used to calculate the seams. By automatically carving out seams to reduce image size, and inserting seams to extend it, we achieve
content-aware resizing. The example on the top right shows our result of extending in one dimension and reducing in the other, compared to
standard scaling on the bottom right.
