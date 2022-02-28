#basic arithmetic 
2+2
2-2
2*2
2/2
3%%2
x <- 3
y <- 5
x+y
z <- x+y
z

x<- 8
y<- 12

x<y 
x<=y
y>x
y>=x
x!=y
x&y
x|y
!x

x=9
y=9

x==y

#character datatype
# Declaring character value with double quotes ""
charac <- "Abcd"
charac
class(charac)

# Declaring character value with single quotes ''
charac_1 <- 'b'
charac_1
class(charac_1)

#Convert values to character data type.
pi_value <- 3.14
x <- as.character(pi_value)
x
class(x)

# Concatenation of Character
firstname <- "Kasturi "
lastname <- "Acharya"


# Character Value Concatenation
# Paste function is used to concatenate characters
full_name <- paste (firstname, lastname)
full_name


#Complex data type 
# Assign complex value to x
x <- 10 + 6i + 20
x
class(x)
z <- 6i
z
class(z)

#Using as.complex() function to convert value to complex.
as.complex(5)
as.complex(7i)


#Typing in the complete value
sqrt(-1+0i) 

#Coerce to complex value
sqrt (as.complex (-1))


#Performing Addition on Complex Numbers
y1 <- 7+3i
y2 <- 8+9i
sum_y <- y1+y2
sum_y
class(sum_y)

# Numeric datatype 
# Assigning a decimal value to variable x
x <- 15.6
x
class(x)
typeof(x)

x1 <- 20
x1
class(x1)
typeof(x1)


# Converting an integer value to numeric type
x2 <- 22L
class(x2)
typeof(x2)
x3<-as.numeric(x2)
x3
class(x3)
typeof(x3)

# Integer datatype 
x<-18L # putting capital 'L' after a value forces it to be
# stored as Integer.
class(x)


y<-9
class(y)


x1<-23.0L
x1<-23L
class(x1)


# Using integer function to declare an Integer type value 
y<-as.integer(44)
class(y1)

#coerce a numeric value into integer
y2<-as.integer(45.2)
y2

#Parse a string (coerce a decimal string)
y3<-as.integer("8.65")
class(y3)

#Convert Logical States to Integer
Logic_True<-as.integer(TRUE)
Logic_True

Logic_False<-as.integer(FALSE)
Logic_False

# To check if the value is integer type:
is.integer(x)
is.integer(y)
is.integer(y1)


#Creating integer vector from 1 to 5
m = 1:5
m
class(m)


# Logical datatype 
x<-TRUE
y<-FALSE

x1 <- T
y1 <- F

typeof(x1)
mode(x1)

####################
# Value Comparison #
####################

# Less Than and Greater Than Comparison
32 < 98  # TRUE Statement
37 > 52  # FALSE Statement
87 <= 92 # TRUE Statement
1 >= 9   # FALSE Statement

# Equal TO Comparison
57 == 34  # FALSE Statement
80 == 80  # TRUE Statement
"hi" == "hi" # TRUE Statement

# Strings 

x1 <- "Olivia"
x2 <- "Jhon"
x3 <- "William"

#checking number of characters
nchar(x1)
nchar(x2)
nchar(x3)

# Letters using vector function in R
# Check the sequence of letters
letters
letters[4]
letters[1:5]

# String Concatenation
# Paste function is used with syntax below:

x <- paste("Hello","World","!",sep = " ")
x

y <- paste(x1,x2,x3,"is happy.")
y

z<- paste("Hello","everyone","!", sep =" ")
z
# Vectors

c() # concatenate function

x4 <- c("Olivia","Jhon","William")
y1 <- paste(x4,"is happy.")
y1

z1 <- c("Please bring me","a few ")
z2 <- c("some vegetables","fruits")
z <- paste(z1,z2,collapse = " and ")
z


#String manipulation 

x <- "William is happy today"
x

# Converting all words to upper case using toupper() function
toupper(x)

# Converting all words tolower case using to lower() function
tolower(x)

x1<-"Henry is A hardworker. He owns A house and A car."
x1
chartr("A", "a", x1)

z<-"I widd gq tq market tqmqrrqw."
chartr("dq","lo", z)

x2<-"Henry puts in all his good efforts"
x2
substr(x2, start = 22, stop = 27)

#split function

x4<-"Henry puts in all his good efforts"
class(x4)
y1<-strsplit(x4, split = " ")
y1
class(y1)
#either create a variable like y1 or direct use the function in case of Mason 
strsplit("Mason", split ="") 
x4
y2<-unlist(strsplit(x4, split = " "))
y2
class(y2)



#datastructure
# input code

v1<-c(1, 2, 3, 4, 5)
v1
is.vector(v1)

v2<-c("a", "b", "c")
v2
is.vector(v2)

v3<-c(TRUE, TRUE, FALSE, FALSE, TRUE)
v3
is.vector(v3)

v4<-c(TRUE, TRUE, "a", 5)
v4
typeof(v4)

v5<-c(6,7 ,8.8,23L)
v5
typeof(v5)


#Analyzing a vector 

x <- c(1,2,3,4)
class(x)
str(x)
length(x)
x<- c(1,2,3,4)
is.na(x)
is.null(x)
x<- c(TRUE, FALSE, TRUE, TRUE)
class(x)
str(x)

length(x)
x<- c(1,2,3,4,NA)
is.na(x)
x<- c()
is.null(x)


#sub-setting a vector
x <- c("A", "B", "C", "D", "E")
x[4]
x[1:4]
x[c(1,4)] 
x[-c(1,4)]

#sorting a vector
x<- c("D","B","A","E","C")
sort(x)
order(x)
x[order(x)]
sort (x, decreasing = TRUE)
order(x, decreasing = TRUE)
x[order(x, decreasing = TRUE)]


#data frame
# input code

# Student ID, names and their marks.
student.data <- data.frame(
   std_id = c(001:005),
   std_name = c("William", "James", "Olivia", "Steve", "David"),
   std_marks = c(84.8, 98.4, 74.6, 80, 95)
)

# Display the data frame student.data
student.data

# Check the structure of the data frame student.data
str(student.data)

#check the head and tail of the data frame student.data
head(student.data, 3)

tail(student.data, 3)


# Check the summary, length and dimension of the data frame student.data
summary(student.data)

length(student.data)

dim(student.data)

# Check number of row/columns individually.
ncol(student.data)
nrow(student.data)

#Accessing dataframe

# input code

student.dataMaths <- data.frame(
   std_id = c(001:005),
   std_name = c("William", "James", "Olivia", "Steve", "David"),
   std_marks_maths = c(56.7, 60.8, 87.1, 55, 62.7)
)

# select columns
student.dataMaths[1]
student.dataMaths[-2]

#selecting columns ONLY data frames
# give the values as vector
student.dataMaths$std_marks_maths

#dataframe[Rows, Cols]

student.dataMaths[2]
student.dataMaths[2,]

student.dataMaths[c(1:3),]


#Data Transformation
student.dataEnglish <- data.frame(
   std_id = c(001:005),
   std_name = c("William", "James", "Olivia", "Steve", "David"),
   std_marks_eng = c(84.8, 98.4, 74.6, 80, 95)
)

student.marks <- data.frame(
   student.dataEnglish, 
   student.dataMaths[3])

student.marks

stud_6 <- data.frame(std_id = c(1:6))
stud_6

stud6_marks <- data.frame(
   student.dataEnglish, 
   stud_6)

student.dataEnglish

new_stdData <- data.frame(
   std_id = 006,
   std_name = "George",
   std_marks_eng = 75.6)

new_stdData

update.stdDataEng <- rbind(student.dataEnglish, new_stdData)

update.stdDataEng


#Data operation 

# input code
# Create a dataframe for user data containing their
# IDs, Names, Age and heights in cm.
user.data <- data.frame(
   user.sn = c(1:5),
   user.name = c("Mr. A", "Mrs B", "Mrs. C", "Mr. D", "Mr. D"),
   user.age = c(25, 50, 41, 29, 58),
   user.height = c(181, 165, 155, 162, 142)
)
user.data
# Calculating sum of ages 
sum(user.data$user.age)

# Calculating the mean of user ages
mean(user.data[[3]])

# Calculating standard deviation of user ages
sd(user.data$user.age)

# Searching for 180 in user.data dataframe
"180"%in% user.data$user.height

"165"%in% user.data$user.height


# INSTALL AND LOAD PACKAGES

# Load base packages manually
library(datasets) # For example data sets
?datasets
library(help = "datasets")

# SOME SAMPLE DATASETS 

iris
?iris

cars <-cars

head(cars)

iris <- iris
head(iris)

tail(iris,20)

iris[,c(1,2)]

iris[,c('Sepal.Length')]


str(iris)

rm(list = ls())

iris

# CLEAN UP 

# Clear environment
rm(list = ls()) 

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L


# first step of using a package
install.packages("tidyverse")

# second step - needs happen each session
# load library
library(tidyverse)

## load data from elsewhere

df <- read_csv("data/StateData.csv")




