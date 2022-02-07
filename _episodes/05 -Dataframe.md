---
title: "Introduction to data frame"
teaching: 0
exercises: 0
questions:
- "Key question (FIXME)"
objectives:
- "learn how to create and access a data frame"
- "learn data frame transformation and operations"
keypoints:
- "basic statistical knowledge and formulas"
---

## Data Frames 

Data frames are used for storing Data tables in R. They are two-dimensional array structures and are similar to tables where each column represents one variable.
The main features to note about a data frame are: 

- Columns can be of different data types 

- Each column name must be unique 

- Each column should be of the same length i.e., contain the same number of elements
 
Data frames in R can be created in two ways: 
- Using data.frame() command 
- Importing data from files such as .csv, .xlsx etc. 

### data.frame() FUNCTION: 
While using the command we can follow the below syntax 

data. Frame (column_1, column_2, column_3, …………………….) 

Make sure that the names of the columns are unique and are of the same length.

### Creating a data frame
~~~
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



~~~
{: .language-r}

~~~
# output
> # Creating a Data Frame for Students data where we have the 
> # Student ID, names and their marks.
> student.data <- data.frame(
+    std_id = c(001:005),
+    std_name = c("William", "James", "Olivia", "Steve", "David"),
+    std_marks = c(84.8, 98.4, 74.6, 80, 95)
+ )
> 
> # Display the dataframe student.data
> student.data
  std_id std_name std_marks
1      1  William      84.8
2      2    James      98.4
3      3   Olivia      74.6
4      4    Steve      80.0
5      5    David      95.0

> # Check the structure of the dataframe student.data
> str(student.data)
'data.frame':	5 obs. of  3 variables:
 $ std_id   : int  1 2 3 4 5
 $ std_name : chr  "William" "James" "Olivia" "Steve" ...
 $ std_marks: num  84.8 98.4 74.6 80 95
> # Check the summary of the dataframe student.data
> summary(student.data)
     std_id    std_name           std_marks    
 Min.   :1   Length:5           Min.   :74.60  
 1st Qu.:2   Class :character   1st Qu.:80.00  
 Median :3   Mode  :character   Median :84.80  
 Mean   :3                      Mean   :86.56  
 3rd Qu.:4                      3rd Qu.:95.00  
 Max.   :5                      Max.   :98.40  
 
> # Check the length of the dataframe student.data
> length(student.data)
[1] 3

> # Check dimension of the dataframe (Row/Column)
> dim(student.data)
[1] 5 3

> # Check number of row/columns individually.
> ncol(student.data)
[1] 3
> nrow(student.data)
[1] 5
> 
> # Checking attributes of the dataframe
> attributes(student.data)
$names
[1] "std_id"    "std_name"  "std_marks"

$class
[1] "data.frame"

$row.names
[1] 1 2 3 4 5

> 
> 
> # Create a dataframe for user data containing their

> # IDs, Names, Age and heights in cm.
> user.data <- data.frame(
+    user.sn = c(1:5),
+    user.name = c("Mr. A", "Mrs B", "Mrs. C", "Mr. D", "Mr. D"),
+    user.age = c(25, 50, 41, 29, 58),
+    user.height = c(180, 165, 155, 162, 142)
+ )
> 
> # Display the dataframe user.data
> user.data 
  user.sn user.name user.age user.height
1       1     Mr. A       25         180
2       2     Mrs B       50         165
3       3    Mrs. C       41         155
4       4     Mr. D       29         162
5       5     Mr. D       58         142
> 
> # Export/Write dataframe to a .csv file >> user.csv
> write.csv(user.data,"user.csv", row.names = FALSE)
~~~
{: .output}

### Accessing Dataframe

~~~
# input code
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

~~~
{: .language-r}

~~~
# output
> student.dataEnglish <- data.frame(
+    std_id = c(001:005),
+    std_name = c("William", "James", "Olivia", "Steve", "David"),
+    std_marks_eng = c(84.8, 98.4, 74.6, 80, 95)
+ )
> 
> student.dataMaths <- data.frame(
+    std_id = c(001:005),
+    std_name = c("William", "James", "Olivia", "Steve", "David"),
+    std_marks_maths = c(56.7, 60.8, 87.1, 55, 62.7)
+ )
> 
> # Using the positive integer indexing to access dataframe
> student.dataMaths[1]
  std_id
1      1
2      2
3      3
4      4
5      5
> 
> # Using the negative integer indexing to access dataframe
> student.dataMaths[-2]
  std_id std_marks_maths
1      1            56.7
2      2            60.8
3      3            87.1
4      4            55.0
5      5            62.7
> 
> # Using the $ sign to access the column of data frame
> student.dataMaths$std_marks_maths
[1] 56.7 60.8 87.1 55.0 62.7
> 
> 
> marks_eng <- data.frame(student.dataEnglish$std_name, 
+                         student.dataEnglish$std_marks)
> marks_eng
  student.dataEnglish.std_name student.dataEnglish.std_marks
1                      William                          84.8
2                        James                          98.4
3                       Olivia                          74.6
4                        Steve                          80.0
5                        David                          95.0
> 
> result1 <- data.frame(student.dataEnglish, student.dataMaths[3])
> result1
  std_id std_name std_marks_eng std_marks_maths
1      1  William          84.8            56.7
2      2    James          98.4            60.8
3      3   Olivia          74.6            87.1
4      4    Steve          80.0            55.0
5      5    David          95.0            62.7
> 
> result <- data.frame(student.dataEnglish, student.dataMaths$std_marks_maths)
> result
  std_id std_name std_marks_eng student.dataMaths.std_marks_maths
1      1  William          84.8                              56.7
2      2    James          98.4                              60.8
3      3   Olivia          74.6                              87.1
4      4    Steve          80.0                              55.0
5      5    David          95.0                              62.7
> 
> # Export/Write dataframe to a .csv file >> marks.csv
> write.csv (result,"marks.csv", row.names = FALSE)

~~~
{: .output}

### Data Transformation 

~~~
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

~~~
{: .language-r}

~~~
# output
> # Student Dataframe for English course marks
> student.dataEnglish <- data.frame(
+    std_id = c(001:005),
+    std_name = c("William", "James", "Olivia", "Steve", "David"),
+    std_marks_eng = c(84.8, 98.4, 74.6, 80, 95)
+ )
> 
> # Display the created dataframe
> student.dataEnglish
  std_id std_name std_marks_eng
1      1  William          84.8
2      2    James          98.4
3      3   Olivia          74.6
4      4    Steve          80.0
5      5    David          95.0
> 
> # Add column to the dataframe and save as update1.stdDataEng
> # USe case: Adding the grades column to the marksheet
> update1.stdDataEng <- cbind(student.dataEnglish, 
+                             Grades = c("B", "A", "C", "B+", "A+") )
> #Display the updated dataframe after adding the grades
> update1.stdDataEng
  std_id std_name std_marks_eng Grades
1      1  William          84.8      B
2      2    James          98.4      A
3      3   Olivia          74.6      C
4      4    Steve          80.0     B+
5      5    David          95.0     A+
> 
> # Creating a new dataframe
> # Use case: Addition of new student data 
> new_stdData <- data.frame(
+    std_id = 006,
+    std_name = "George",
+    std_marks_eng = 75.6, 
+    Grades = "C")
> # Display the new dataframe
> new_stdData
  std_id std_name std_marks_eng Grades
1      6   George          75.6      C
> 
> # Adding a new row to the dataframe
> # Use-case New student data entry
> update2.stdDataEng <- rbind(update1.stdDataEng, new_stdData )
> update2.stdDataEng
  std_id std_name std_marks_eng Grades
1      1  William          84.8      B
2      2    James          98.4      A
3      3   Olivia          74.6      C
4      4    Steve          80.0     B+
5      5    David          95.0     A+
6      6   George          75.6      C
> 
> # Dropping a row in the data frame update3.stdDataEng
> update3.stdDataEng <- update2.stdDataEng[-2, ]
> update3.stdDataEng
  std_id std_name std_marks_eng Grades
1      1  William          84.8      B
3      3   Olivia          74.6      C
4      4    Steve          80.0     B+
5      5    David          95.0     A+
6      6   George          75.6      C
> 
> # Dropping a column in the dataframe update3.stdDataEng
> update4.stdDataEng <- update3.stdDataEng[ , -4]
> update4.stdDataEng
  std_id std_name std_marks_eng
1      1  William          84.8
3      3   Olivia          74.6
4      4    Steve          80.0
5      5    David          95.0
6      6   George          75.6
> 
> # Returning column as a vector
> update4.stdDataEng[1]
  std_id
1      1
3      3
4      4
5      5
6      6
> update4.stdDataEng[[1]]
[1] 1 3 4 5 6

~~~
{: .output}

### Data Operations

~~~
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

~~~
{: .language-r}

~~~
# output
> # IDs, Names, Age and heights in cm.
> user.data <- data.frame(
+    user.sn = c(1:5),
+    user.name = c("Mr. A", "Mrs B", "Mrs. C", "Mr. D", "Mr. D"),
+    user.age = c(25, 50, 41, 29, 58),
+    user.height = c(181, 165, 155, 162, 142)
+ )
> user.data
  user.sn user.name user.age user.height
1       1     Mr. A       25         181
2       2     Mrs B       50         165
3       3    Mrs. C       41         155
4       4     Mr. D       29         162
5       5     Mr. D       58         142
> # Calculating sum of ages 
> sum(user.data$user.age)
[1] 203
> # Calculating the mean of user ages
> mean(user.data[[3]])
[1] 40.6
> # Calculating standard deviation of user ages
> sd(user.data$user.age)
[1] 13.86723
> 
> # Searching for 180 in user.data dataframe
> "180" %in% user.data$user.height
[1] FALSE
> 
> "165" %in% user.data$user.height
[1] TRUE
~~~
{: .output}











{% include links.md %}
