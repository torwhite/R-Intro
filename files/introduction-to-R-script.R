#basic arithmetic 
2+2
2-2
2*2
2/2
3%%2

#Assigning values
x <- 3
y <- 5
x+y
z <- x+y
z


#character data type 
# input code
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
first_name <- "Kasturi "
last_name <- "Acharya"

# Character Value Concatenation
# Paste function is used to concatenate characters
full_name <- paste (first_name, last_name)
full_name

#Complex data type 

# input code
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

# Square root function on complex numbers
#Find the square root of -3+0i
sqrt (-3) 

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


#Numeric data type
# input code
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
x3 <- as.numeric(x2)
x3
class(x3)
typeof(x3)


#Integer data type 
# input code
x <-  18L # putting capital 'L' after a value forces it to be
# stored as Integer.
class(x)


y <-  9
class(y)


x1 <-  23.0L
x1 <-  23L
class(x1)


# Using integer function to declare an Integer type value 
y1 <-  as.integer(44)
class(y1)

#coerce a numeric value into integer
y2 <-  as.integer(45.2)
y2

#Parse a string (coerce a decimal string)
y3 <- as.integer("8.65")
class(y3)

#Convert Logical States to Integer
Logic_True <- as.integer(TRUE)
Logic_True

Logic_False <- as.integer(FALSE)
Logic_False

# To check if the value is integer type:
is.integer(x)
is.integer(y)
is.integer(y1)


#Creating integer vector from 1 to 5
m = 1:5
m
class(m)

#Logical data type 
# input code
x <- TRUE
y<- FALSE

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


#strings
# input code string concatenation 
#Count number of characters in string
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
# paste(..., sep = " ", collapse = NULL)

x <- paste("Hello","World", "!", sep = " ", collapse = "--")
x

y <- paste(x1, x2, x3, "is happy.")
y

z<- paste("Hello","everyone","!", sep =" ")
z

x4 <- c("Olivia", "Jhoin", "William")
y1 <- paste(x4, "is happy.")
y1

y2 <- paste(x4, "is happy.", collapse = " -- ")
y2

z1 <- c("Please bring me", "a few ")
z2 <- c("some vegetables", "fruits")
z <- paste(z1, z2, collapse = " and ")

#vector
# input code

v1 <- c(1, 2, 3, 4, 5)
v1
is.vector(v1)

v2 <- c("a", "b", "c")
v2
is.vector(v2)

v3 <- c (TRUE, TRUE, FALSE, FALSE, TRUE)
v3
is.vector(v3)

v4<- c (TRUE, TRUE, "a", 5)
v4 
typeof(v4)

v1 <- c(1, 2, 3, 4, 5)
v1
is.vector(v1)

v2 <- c("a", "b", "c")
v2
is.vector(v2)

v3 <- c (TRUE, TRUE, FALSE, FALSE, TRUE)
v3
is.vector(v3)

v4<- c (TRUE, TRUE, "a", 5)
v4 
typeof(v4)


#Analyzing a vector
x <- c(1,2,3,4)
class(x)
str(x)
num [1:4] 
length(x)
4

x<- c(1,2,3,4)
is.na(x)
is.null(x)
FALSE

x<- c(TRUE, FALSE, TRUE, TRUE)
class(x)
str(x)
logi [1:4] 
length(x)


x<- c(1,2,3,4,NA)
is.na(x)
x<- c()
is.null(x)
TRUE

#Sub-setting a vector
x <- c("A", "B", "C", "D", "E")
x[1]
x[4]
x[1:4]
x[c(1,4)]
x[-c(1,4)]


#Sorting a vector 
x<- c("D","B","A","E","C")
sort(x)

order(x)

x[order(x)]

sort (x, decreasing = TRUE)

order(x, decreasing = TRUE)

x[order(x, decreasing = TRUE)]



# Vector Indexing Methods in R
#   1. Logical Index Vector
#   2. Positive-Integral Index Vector
#   3. Negative-Integral Index Vector
#   4. Character Index Vector

# -----------------------------------------
# 1. Logical Index Vector
vec1 <- 12:17
v_logindx <- vec1[c(F, F, T, F, T)]
v_logindx

# -----------------------------------------
# 2. Positive-Integral Index Vectors
vec2 <- 12:22

# Accessing directly using a single index number
x1 <- vec2[2]
x1

# Accessing using the c() function for multiple index values
x2 <- vec2[c(2, 5, 7)]
x2

access_values <- c(2, 5, 7)
x3 <- vec2[access_values]
x3

# ----------------------------------------
# 3. Negative Integral Index Values
x4 <- vec2[c(-1, -4, -3)]
x4


# ----------------------------------------
# 4. Character Indexing
vec_named <- c("Apple" = 1, "Banana" = 2, "Orange" = 5, "Pears" = 8)
vec_named
x5 <- vec_named[c("Banana", "Pears")]
x5



#creating a dataframe

# input code

# Student ID, names and their marks.
student.data <- data.frame(
   std_id = c(001:005),
   std_name = c("William", "James", "Olivia", "Steve", "David"),
   std_marks = c(84.8, 98.4, 74.6, 80, 95)
)

# Display the dataframe student.data
student.data

# Check the structure of the dataframe student.data
str(student.data)

# Check the summary of the dataframe student.data
summary(student.data)

# Check the length of the dataframe student.data
length(student.data)

# Check dimension of the dataframe (Row/Column)
dim(student.data)

# Check number of row/columns individually.
ncol(student.data)
nrow(student.data)

# Checking attributes of the dataframe
attributes(student.data)


# Create a dataframe for user data containing their
# IDs, Names, Age and heights in cm.
user.data <- data.frame(
   user.sn = c(1:5),
   user.name = c("Mr. A", "Mrs B", "Mrs. C", "Mr. D", "Mr. D"),
   user.age = c(25, 50, 41, 29, 58),
   user.height = c(180, 165, 155, 162, 142)
)

# Display the dataframe user.data
user.data 

# Export/Write dataframe to a .csv file >> user.csv
write.csv(user.data,"user.csv", row.names = FALSE)

#Accessing a Dataframe

student.dataEnglish <- data.frame(
   std_id = c(001:005),
   std_name = c("William", "James", "Olivia", "Steve", "David"),
   std_marks_eng = c(84.8, 98.4, 74.6, 80, 95)
)

student.dataMaths <- data.frame(
   std_id = c(001:005),
   std_name = c("William", "James", "Olivia", "Steve", "David"),
   std_marks_maths = c(56.7, 60.8, 87.1, 55, 62.7)
)

# Using the positive integer indexing to access dataframe
student.dataMaths[1]

# Using the negative integer indexing to access dataframe
student.dataMaths[-2]

# Using the $ sign to access the column of data frame
student.dataMaths$std_marks_maths


marks_eng <- data.frame(student.dataEnglish$std_name, 
                        student.dataEnglish$std_marks)
marks_eng

result1 <- data.frame(student.dataEnglish, student.dataMaths[3])
result1

result <- data.frame(student.dataEnglish, student.dataMaths$std_marks_maths)
result

# Export/Write dataframe to a .csv file >> marks.csv
write.csv (result,"marks.csv", row.names = FALSE)


#Data Transformation 
# input code
# Student Dataframe for English course marks
student.dataEnglish <- data.frame(
   std_id = c(001:005),
   std_name = c("William", "James", "Olivia", "Steve", "David"),
   std_marks_eng = c(84.8, 98.4, 74.6, 80, 95)
)

# Display the created dataframe
student.dataEnglish

# Add column to the dataframe and save as update1.stdDataEng
# USe case: Adding the grades column to the marksheet
update1.stdDataEng <- cbind(student.dataEnglish, 
                            Grades = c("B", "A", "C", "B+", "A+") )
#Display the updated dataframe after adding the grades
update1.stdDataEng

# Creating a new dataframe
# Use case: Addition of new student data 
new_stdData <- data.frame(
   std_id = 006,
   std_name = "George",
   std_marks_eng = 75.6, 
   Grades = "C")
# Display the new dataframe
new_stdData

# Adding a new row to the dataframe
# Use-case New student data entry
update2.stdDataEng <- rbind(update1.stdDataEng, new_stdData )
update2.stdDataEng

# Dropping a row in the data frame update3.stdDataEng
update3.stdDataEng <- update2.stdDataEng[-2, ]
update3.stdDataEng

# Dropping a column in the dataframe update3.stdDataEng
update4.stdDataEng <- update3.stdDataEng[ , -4]
update4.stdDataEng

# Returning column as a vector
update4.stdDataEng[1]
update4.stdDataEng[[1]]

#Data Operations
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
"180" %in% user.data$user.height

"165" %in% user.data$user.height


#Sample dataset

# INSTALL AND LOAD PACKAGES ################################

# Load base packages manually
library(datasets) # For example datasets
?datasets
library(help = "datasets")

# SOME SAMPLE DATASETS #####################################

# iris data
?iris
iris

# UCBAdmissions
?UCBAdmissions
UCBAdmissions

# Titanic
? Titanic
Titanic

# state.x77
?state.x77
state.x77

#swiss
?swiss
swiss

# CLEAN UP #################################################

# Clear environment
rm(list = ls()) 

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

#loading packages

# INSTALL AND LOAD PACKAGES ################################

# Install pacman ("package manager") if needed
if (!require("pacman")) install.packages("pacman")

# Load contributed packages with pacman
pacman::p_load(pacman, party, rio, tidyverse)
# pacman: for loading/unloading packages
# party: for decision trees
# rio: for importing data
# tidyverse: for so many reasons

# LOAD AND PREPARE DATA ####################################

# Save data to "df" (for "data frame")
# Rename outcome as "y" (if it helps)
# Specify outcome with df$y

# Import CSV files with readr::read_csv() from tidyverse
(df <- read_csv("data/StateData.csv"))

# Import other formats with rio::import() from rio
(df <- import("data/StateData.xlsx") %>% as_tibble())

# or...

df <- import("data/StateData.xlsx") %>%
   as_tibble() %>%
   select(state_code, 
          psychRegions,
          instagram:modernDance) %>% 
   mutate(psychRegions = as.factor(psychRegions)) %>%
   rename(y = psychRegions) %>%
   print()

