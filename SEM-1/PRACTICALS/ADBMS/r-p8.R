install.packages("e1071")
install.packages("klaR")

# Loading library e1071
library(e1071)

# Loading library klaR
library(klaR)

## Loading required package: caret
library(caret)

## Loading required package: lattice
library(lattice)

## Loading required package: ggplot2
library(ggplot2)

# iris dataset
data(iris)
head(iris)

#finding unique values
unique(iris$Species)

#Plot graph
pairs(iris[1:4], main="Iris Data (red=setosa,green=versicolor,blue=virginica)",
      pch=21, bg=c("red","green3","blue")[unclass(iris$Species)])

# training a naive Bayes model
index = sample(nrow(iris), floor(nrow(iris) * 0.7)) #70/30 split.
train = iris[index,]
test = iris[-index,]
xTrain = train[,-5] # removing y-outcome variable.
yTrain = train$Species # only y.
xTest = test[,-5]
yTest = test$Species

# nb - tells to use naive bayes
# cv - cross validation
model = train(xTrain,yTrain,'nb',trControl=trainControl(method='cv',number=10))
model

## table() gives frequency table, prop.table() gives freq% table.
prop.table(table(predict(model$finalModel,xTest)$class,yTest))








#K nearest Neighbour
df <- data(iris) ##load data
head(iris) ## see the structure

##Generate a random number that is 90% of the total number of rows in dataset.
ran <- sample(1:nrow(iris), 0.9 * nrow(iris))
ran

##the normalization function is created
nor <-function(x) { (x -min(x))/(max(x)-min(x)) }
##Run nomalization on first 4 coulumns of dataset because they are the predictors
iris_norm <- as.data.frame(lapply(iris[,c(1,2,3,4)], nor))
iris_norm

##extract training set
iris_train <- iris_norm[ran,]
iris_train

##extract testing set
iris_test <- iris_norm[-ran,]
iris_test

##extract 5th column of train dataset because it will be used as 'cl' argument in knn function.
iris_target_category <- iris[ran,5]
iris_target_category

##extract 5th column if test dataset to measure the accuracy
iris_test_category <- iris[-ran,5]
iris_test_category

##load the package class
library(class)

##run knn function
pr <- knn(iris_train,iris_test,cl=iris_target_category,k=13)
pr 

##create confusion matrix
tab <- table(pr,iris_test_category)
tab

##this function divides the correct predictions by total number of predictions that tell us how it is accurate
accuracy <- function(x){sum(diag(x)/(sum(rowSums(x)))) * 100}
accuracy(tab)









#K-Means clustering

head(iris)
library(ggplot2)
ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()

#Setting a seed in R means to initialize a pseudorandom number generator.
set.seed(20)

#Executing Kmeans
irisCluster <- kmeans(iris[, 3:4], 3, nstart = 20)
irisCluster

table(irisCluster$cluster, iris$Species)

irisCluster$cluster <- as.factor(irisCluster$cluster)
ggplot(iris, aes(Petal.Length, Petal.Width, color = irisCluster$cluster)) + geom_point()


#K-Means Agglomerative
head(iris)
clusters <- hclust(dist(iris[, 3:4]))
clusters
plot(clusters)
clusterCut<- cutree(clusters, 3)
clusterCut
table(clusterCut, iris$Species)
clusters <- hclust(dist(iris[, 3:4]), method = 'average')
clusters
plot(clusters)
clusterCut <- cutree(clusters, 3)
clusterCut
table(clusterCut,iris$Species)
ggplot(iris, aes(Petal.Length, Petal.Width, color = iris$Species)) + geom_point(alpha = 0.4, size = 3.5) + geom_point(col = clusterCut) + scale_color_manual(values = c('black', 'red', 'green'))

