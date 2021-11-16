---
title: "Introduction to basic data analysis"
teaching: 0
exercises: 0
questions:
- "Key question (FIXME)"
objectives:
- "learn how to perform uni-variate and bivariate analysis with R studio"
- "learn how to conduct basic probability in R studio"
keypoints:
- "basic statistical knowledge and formulas"
---

### **UNIVARIATE ANALYSIS**

R has many in-built datasets using which we can use. 

You can find the available list of datasets and its description **here**.

You can also view a detailed description of the data set using the command **help("data_set_name")**

1. FACTOR:
Kindly run the below command to load the in-built dataset mtcars in your R session: 
library(datasets)

data("mtcars")

mtcars$cyl <- as.factor(mtcars$cyl) 

mtcars$vs <- as.factor(mtcars$vs) 

mtcars$am <- as.factor(mtcars$am) 

mtcars$gear <- as.factor(mtcars$gear) 

mtcars$carb <- as.factor(mtcars$carb) 

str(mtcars) 

The as.factor is used to convert a column of different data type to a factor data type
The columns

{% include links.md %}
