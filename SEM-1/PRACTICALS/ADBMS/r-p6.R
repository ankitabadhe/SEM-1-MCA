#Basic R commands

myString<-"Narender Keswani"
print(myString)

## getwd() - get current working directory.
getwd()

## dir() - lists the contents of current working directory.
dir()

##ls() - lists names of objects in R environment
ls()

x<-1
## Checking the type of variable:
class(x)

#Printing a variable:
#auto-printing
x

#explicit printing
print(x)

## is., as. functions: R has is.* and as.* family of functions that can be used to check whether a varix<-'c'
#check if character
is.character(x)

#check if integer
is.integer(x)

y<-'2.14'
as.integer(y)

###Creating Vector: contains objects of same class.
#using c() function
x<-c(11.3,27.5,33.8)
x

#using vector() function
y<-vector("logical", length=10)
y

#length of vector x
length(x)

#Vector operations: Various arithmetic operations can be performed member-wise. Like:
#- Multiplication by a scalar.
#- Addition of two vectors.
#- Multiplication of two vectors

y<-c(4,5,6)
y

#multiplication by a scalar
5*x

#addition of two vectors x+y
x+y

#multiplication of two vectors
x*y

#subtraction of two vectors
x-y

#divison of two vectors
x/y

#x to the power y
x^y

###Creating Matrix: Two-dimensional array having elements of same class.
#using matrix() function
m<-matrix(c(11,12,13,55,60,65,66,72,78),nrow=3,ncol=3)
m

#dimensions of matrix m
dim(m)

#attributes of matrix m
attributes(m)

#By default, elements in matrix are filled by column. "byrow" attribute of matrix() can be used to 
fillm<-matrix(c(11,12,13,55,60,65,66,72,78),nrow=3,ncol=3,byrow = TRUE)
fillm

#cbinding and rbinding:
#By using cbind() and rbind() functions
x<-c(1,2,3)
y<-c(11,12,13)

#cbind
cbind(x,y)

#rbind
rbind(x,y)

##Matrix operations/functions:
#Multiplication by a scalar.
print(x*5)
#Addition, subtraction and multiplication of two matrices.
print(x+y)
print(x-y)
print(x*y)
print(x/y)
#Transpose, determinant of a matrix. etc.
#multiplication by a scalar
p<-3*m
p

n<-matrix(c(4,5,6,14,15,16,24,25,26),nrow=3,ncol=3)
#addition of two matrices
q<-m+n
q

o<-matrix(c(4,5,6,14,15,16),nrow=3,ncol=2)
o

#matrix multiplication by using %*%
r<-m %*% o
r

#transpose of matrix
mdash<-t(m)
mdash

s<-matrix(c(4,5,6,14,15,16,24,25,26), nrow=3,ncol=3,byrow=TRUE)
#determinant of s
s_det<-det(s)
s_det

#using list() function
x<-list(1,"p",TRUE,2+4i)
x

###Factor: Represents categorical data. Can be ordered or unordered.
status<-c("low","high","medium","high","low")
#using factor() function
x<-factor(status, ordered=TRUE,levels=c("low","medium","high"))
x

##levels' argument is used to set the order of levels.
#First level forms the baseline level.
# Without any order, levels are called nominal. Ex. - Type1, Type2, .
# With order, levels are called ordinal. Ex. - low, medium, .


###Data frame: Used to store tabular data. Can contain different classes.
student_id<-c(1,2,3)
student_names<-c("Ram","Shyam","Laxman")
position<-c("First","Second","Third")
#using data.frame() function
data<-data.frame(student_id,student_names,position)
data

#accessing a particular column
data$student_id

#no. of rows in data
nrow(data)

#no. of columns in data
ncol(data)

#column names of data. for a dataframe, colnames() can also be used.
names(data)

###Table command is used to create a 2dimensional table in R
smoke <- matrix(c(51,43,22,92,28,21,68,22,9),ncol=3,byrow=TRUE)
colnames(smoke) <- c("High","Low","Middle")
rownames(smoke) <- c("current","former","never")
smoke <- as.table(smoke)
smoke

#install.packages("package_name")
library(XLConnect)
install.packages("readxl")
library(readxl)
install.packages("writexl")
library(writexl)

dataT <- read.table("C:\\Users\\NARENDER KESWANI\\Desktop\\r-prac-check.csv", sep =",", header = T)
dataT

# dimension
dim(dataT)

# Load just few lines at the top or bottom
head(dataT, 2)

tail(dataT, 2)

z <- data.frame(a = 5, b = 10, c = pi)
write.csv(z,file="exampledata.csv")

#Reading and writing data from Excel using XLConnect
dataX <- XLConnect:: readWorksheetFromFile("C:\\Users\\NARENDER KESWANI\\Downloads\\01 Contoso Employee Info.xlsx",sheet=1)
dataX

# Following is called Subsetting - It will print rows from 1 to 2 and all columns
dataY<- dataX[1:2,]
dataY

install.packages('Rcpp')
library(Rcpp)

#Reading and writing data from Excel using readXL and writeXL
data2 <- read_excel("C:\\Users\\NARENDER KESWANI\\Downloads\\01 Contoso Employee Info.xlsx")
data2
data3<- data2[1:5,]
write_xlsx(data3, "e2.xlsx")

# create an empty data frame
data <- data.frame(Name=character(), Age=numeric())
# load interface and assign edited values to data back - uncomment following
data <- edit(data)
#print those values
data