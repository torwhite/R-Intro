---
title: " Intoduction to data structures"
questions:
- "Key question (FIXME)"
objectives:
- " understanding different data structure"
- "learn about functions of each data structure"

keypoints:
- "understanding difference between data structures"
---
FIXME

## **1. VECTORS**
Vectors are the basic data structure of R. Vectors can hold multiple values together using the concatenate **c()** function. 
The type of data inside a vector can be determined by using **typeof()** function and the length (or)
number of elements in a vector can be found with **length()** function. 

R uses one indexing, hence the position of the first component in a vector can be accessed by,**vector_name[1]**

[FIXME add code image]

A vector will **always** contain data of same data type. If a vector contains multiple data types 
the vector will convert all its values to the same data type in the below order of precedence: 

• Character 

• Double (Float / Decimals) 

• Integers (Round whole numbers)

[FIXME add code image for each data type]

### **Analyzing a Vector**

class(vector_name) - Type of data present inside the vector 

str(vector_name) - Structure of the vector 

is.na(vector_name) - Checks if each element of vector is “NA” 

is.null(vector_name) - Checks if the entire vector is empty 

length(vector_name) - Number of elements present inside the vector

Syntax:

~~~
> x <- c(1,2,3,4)
> **class (x)**
[1] "numeric"
> str (x)
num [1:4] 1 2 3 4 
> length (x)
[1] 4

~~~
{: .language-r}




{% include links.md %}
