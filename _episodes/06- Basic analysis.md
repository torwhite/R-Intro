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

## **UNIVARIATE ANALYSIS**

R has many in-built datasets using which we can use. 

You can find the available list of datasets and its description **here**.

You can also view a detailed description of the data set using the command **help("data_set_name")**

### **1. FACTOR:**

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

[FIXME add dataset image]

The columns **cyl, vs, am, gear, carb** are all factors with **3, 2, 2, 3, 6** individual values, respectively.

To select an individual column, you can write the code in below format using **$** symbol 

Data_frame_name$column_name 
Eg: **mtcars$cyl**

Below are commands to perform univariate (single variable) analysis in R

[FIXME add command and description image]

[FIXME add code image]

### **2. NUMERIC:**

[FIXME add command and description image]

Quantiles divide the range of values in equal distribution. For e.g. 50% quantile represents 
a value such that 50 percent of the values in the given list are below this value and 50 percent of
the values in the given list are above this value (which is the median)

Quantile 0% - Lowest value in the list
Quantile 50% - Median value in the list 
Quantile 100% - Highest value in the list 

Kindly find a video explaining in detail quantile and percentiles **here**.

[FIXME add code image]

## **BIVARIATE ANALYSIS**

### **1. TWO FACTORS:** 

We will now use the esoph dataset whose description can be found **here**. Load the dataset using: 

   data(esoph)
   
   View(esoph) 
   
   str(esoph)
   
The esoph dataset hast three factor columns: 

**➢ agegp – Age group** 

**➢ alcgp – Alcohol consumption** 

**➢ tobgp – Tobacco consumption**

To compare and analyze two factors the same commands as a univariate factor analysis is used with a slight change in the arguments passed:

[FIXME add command and description image]

[FIXME add code image]

You can use the below two functions to perform operations on table and proportionality tables:

[FIXME add command and description image]

[FIXME add code image]

The **prop.table()** command has an argument “margin” which is used to calculate percentages along individual rows/columns

[FIXME add command and description image]

[FIXME add code image]


### **2. TWO NUMERICS:**

We analyze the relationship between two numeric variables using correlation metric.

Correlation → Helps establish a relationship between the two numerical variables Correlation 
* Has value between -1 to +1 Correlation 
* Value farther from zero, more related are the two numerical variables Correlation
* Value closer to zero, less related are the two numerical variables Correlation
* Positive, indicates a direct relationship. Increase of one value in one variable Correlation 
* causes an increase of value in the other variable and vice-versa Correlation 
* Negative, indicates an inverse relationship. Increase of value in one variable Correlation 
*  causes a decrease of value in the other variable






{% include links.md %}
