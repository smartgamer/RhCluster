
#HIERARCHICAL CLUSTERING IN R  
#http://dataaspirant.com/2018/01/08/hierarchical-clustering-r/

data()

data(iris)
head(iris)

df <- iris[,-5] 
df <- na.omit(df)
head(df)

df <- scale(df) #Error in colMeans(x, na.rm = TRUE) : 'x' must be numeric
df$Species = as.numeric(as.factor(df$Species)) #if include speicies
df <- scale(df)

d <- dist(df, method = "euclidean")

# Hierarchical clustering using Complete Linkage
hc1 <- hclust(d, method = "complete" )

# Plot the obtained dendrogram
plot(hc1)

# Compute with agnes
hc2 <- agnes(df, method = "complete")

A1 = c(2,3,5,7,8,10,20,21,23)
A2 = A1
A3 = A1

# install.packages("scatterplot3d")
library(scatterplot3d)
scatterplot3d(A1,A2,A3, angle = 25, type = "h")

demo = hclust(dist(cbind(A1,A2,A3)))
plot(demo)
