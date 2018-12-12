# RhCluster

Table of contents:
What is clustering analysis?
Clustering analysis example
Hierarchical clustering
Dendrogram
Agglomerative clustering
Divisive clustering
Clustering linkage comparison
Implementing hierarchical clustering in R programming language
Data preparation
Packages need to perform hierarchical clustering
Visualizing clustering in 3d view
Complete code
Summary

### Implementing hierarchical clustering in R programming language
Data Preparation
To perform a cluster analysis in R, generally, the data should be prepared as follows:

Rows are observations (individuals) and columns are variables
Any missing value in the data must be removed or estimated.
The data must be standardized (i.e., scaled) to make variables comparable. Recall that, standardization consists of transforming the variables such that they have mean zero and standard deviation one.

### Packages need to perform hierarchical clustering
hclust [in stats package]
agnes [in cluster package]
We can perform agglomerative HC with hclust. First, we compute the dissimilarity values with dist and then feed these values into hclust and specify the agglomeration method to be used (i.e. “complete”, “average”, “single”, “ward.D”). We can plot the dendrogram after this.

Alternatively, we can use the agnes function. These functions behave very similarly; however, with the agnes function, we can also get the agglomerative coefficient, which measures the amount of clustering structure found (values closer to 1 suggest strong clustering structure).
This allows us to find certain hierarchical clustering methods that can identify stronger clustering structures. Here we see that Ward’s method identifies the strongest clustering structure of the four methods assessed.

### Visualizing clustering in 3d view
Let’s examine, this time visually. How this algorithm proceeds using a simple dataset. 

As visual representations are limited to three dimensions, we will only use three attributes, but the computation is similar if we use more attributes. We will display these using the scatterplot3d() function of the plot3D package. 

which we will install and load after creating the attributes. We then examine the clustering solution provided by hclust() in order to assess whether it confirms the impressions we get from visual inspection.
In the left panel of the above plot, there are three groups of two points that are very close to each other. Another point is quite close to each of these groups of two. 

Consider that the groups of two constitute a group of three with the points that lie closest to them. Finally, the two groups on the left are closer to each other than they are to the group of three on the right. 

In the left panel of the above plot, there are three groups of two points that are very close to each other. Another point is quite close to each of these groups of two. 
Consider that the groups of two constitute a group of three with the points that lie closest to them. Finally, the two groups on the left are closer to each other than they are to the group of three on the right. 
If we have a look at the dendrogram, we can see that the very same pattern is visible.

#

