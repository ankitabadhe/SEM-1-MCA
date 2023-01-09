#load library
library(ggplot2)

#load cars dataset
my_data <-mtcars

#printing names of columns
names(my_data)

#printing dimensions of dataset
dim(my_data)

#randomize
my_data <- my_data[sample(nrow(my_data), ), ]
head(my_data)

#Creating Training & Testing Dataset
TrainData <- my_data[1:20,]
TestData <- my_data[21:32,]

TrainData
TestData

## Linear Model
fit = lm(mpg ~ hp, data=mtcars)
summary(fit)

preds <- predict(fit, newdata = TestData)
df1 <- data.frame(preds,TestData$mpg)
head(df1)

#correlation
cor(preds,TestData$mpg)

plot(mtcars$hp, mtcars$mpg)

ggplot(fit, aes(hp, mpg)) +
  geom_point() +
  stat_smooth(method = lm, se = FALSE) +
  geom_segment(aes(xend = hp, yend = .fitted), color = "red", size = 0.3)


# BetterModel
lmmodel1 <- lm(mpg ~ hp+cyl+gear+wt, data = TrainData)
summary(lmmodel1)

preds_new <- predict(lmmodel1, newdata = TestData)
df2 <- data.frame(preds_new,TestData$mpg)
head(df2)

cor(preds_new,TestData$mpg)

plot(mtcars$hp+mtcars$cyl+mtcars$gear+mtcars$wt, mtcars$mpg)

ggplot(fit, aes(mtcars$hp+mtcars$cyl+mtcars$gear+mtcars$wt, mpg)) +
  geom_point() +
  stat_smooth(method = lm, se = FALSE) +
  geom_segment(aes(xend = mtcars$hp+mtcars$cyl+mtcars$gear+mtcars$wt, yend = .fitted), color = "red", size = 0.3)




