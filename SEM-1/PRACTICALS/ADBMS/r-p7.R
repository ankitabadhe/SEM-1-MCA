my_data<-mtcars
head(my_data,5)

#my_data
my_data1 <- my_data[1:6,1:5]
my_data1

## Renaming columns with dplyr::rename()
require(dplyr)
library(conflicted)
install.packages("dplyr")
library(dplyr, warn.conflicts = FALSE)
my_data1 = dplyr::rename(my_data1, "horse_power" = "hp")
my_data1

## Adding new variable
my_data1$new_hp1 <- my_data1$horse_power * 0.5
colnames(my_data1)

my_data1

#naming variable
#Reading with read.table() assumes no headers by default. First few lines :
data2 = read.table(file="C:\\Users\\NARENDER KESWANI\\Downloads\\missing_col1.csv", sep = ",")
data2

#V1, V2, V3.. are given as default names (titles) by R
data2 = read.csv(file="C:\\Users\\NARENDER KESWANI\\Downloads\\missing_col1.csv", col.names=c("Sno", "NAME","SALARY","DateOfJodata2"))
data2
                 
#Operation with NA
NA + 4

#Create a vector V with 1 NA value
V <- c(1,2,NA,3)
V

#Median with and without NA (remove NA)
#with NA
median(V)

#without NA
#On removing NAs
median(V, na.rm = T)

#Apply is.na() to vector
is.na(V)

#Removing the NA values by using logical indexing
naVals <- is.na(V)
naVals

#Get values that are not NA
V[!naVals]

#Subsetting with complete cases - values that are not NA
V[complete.cases(V)]

#Subsetting a data frame with complete cases
#Complete Data of Prime Ministers. Notice NAs
dataC <- read.csv(file ="C:\\Users\\NARENDER KESWANI\\Downloads\\na_data.csv", na.strings = "")
dataC

# Subset only the rows without NA
dataCompleteCases <- dataC[complete.cases(dataC),]
dataCompleteCases

install.packages('Hmisc')
library(Hmisc)

## create a vector
x = c(1,2,3,NA,4,4,NA)
# mean imputation - from package, mention name of function to be used
x <- impute(x, fun = mean)
x

#median imputation
x <- impute(x, fun = median)
x

#Convert Character into Factor(categorical data)
#Create gender vector
gender_vector <- c("Male", "Female", "Female", "Male", "Male")
class(gender_vector)

#Convert gender_vector to a factor
factor_gender_vector <-factor(gender_vector)
class(factor_gender_vector)

#Create Ordinal categorical vector
day_vector <- c('evening', 'morning', 'afternoon', 'midday', 'midnight', 'evening')
day_vector

#Convert `day_vector` to a factor with ordered level
factor_day <- factor(day_vector, order = TRUE, levels =c('morning', 'midday', 'afternoon', 'evening', 'midnight'))
#Print the new variable
factor_day

## Levels: morning < midday < afternoon < evening < midnight
# Convert Numeric to Factor

# Creating vectors
age <- c(40, 49, 48, 40, 67, 52, 53)
salary <- c(103200, 106200, 150200, 10606, 10390, 14070, 10220)
gender <- c("male", "male", "transgender","female", "male", "female", "transgender")
# Creating data frame named employee
employee<- data.frame(age, salary, gender)
employee

# Creating a factor corresponding to age with labels
wfact = cut(employee$age, 3, labels=c('Young', 'Medium', 'Aged'))
table(wfact)
