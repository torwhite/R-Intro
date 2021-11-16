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
  causes an increase of value in the other variable and vice-versa Correlation 
  
* Negative, indicates an inverse relationship. Increase of value in one variable Correlation 
  causes a decrease of value in the other variable.
  
  [FIXME add correlation image]
  
  Videos explaining correlation in detail – **Part 1 & Part 2**
  
Correlation is performed in R using the below command
  
**cor(numeric_variable1, numeric_variable2)** - Correlation value between the two numeric variables
  
Import the **mtcars dataset** using the commands data(mtcars) -> View(mtcars)
  
  **mtcars** has a few numerical variables 
  
  ➢ **mpg**- Miles/(US) gallon (or) Mileage 
  
  ➢ **disp** - Displacement 
  
  ➢ **hp** - Horsepower

Now we can run the below commands to determine the correlation relationship

[FIXME add command and description image]

The correlation value is negative between mileage and horsepower. Thus, there is an inverse 
relationship between them i.e. Higher the horsepower, lower is the car mileage and vice versa.

The correlation value is positive between displacement and horsepower. Thus, there is a 
direct relationship between them i.e. Higher the displacement, higher is the car horsepower 
and same for lower values (Lower displacement indicates a lower horsepower).

### **3. ONE FACTOR & ONE NUMERIC:**

Use below commands to analyze one factor and one numeric variable

~~~
aggregate(Numerical_column ~ Factor_column,
dataset_name, Function_to_perform) 

summarise()

describeBy(Numerical_column , Factor_column)  

~~~
{: .language-r}

[FIXME add command and description image]

[FIXME add code image]

## **PROBABILITY**


### **NORMAL DISTRIBUTION:**

Distribution of the values creates/follows a bell curve. The distribution of the variable follows a 

Gaussian curve 

**μ**- Mean (Average) 

**Variance** -  Sum of square of the difference of each value from mean divided by number of values 

**σ** – Standard Deviation (Square root of variance)

[FIXME add Normal Distribution image]

Not all normal distributions are same. They differ based on the values

[FIXME add Normal Distribution image]

To generate a normal distribution in R we can use the **rnorm()** function 

Syntax:

~~~
rnorm(mean_value, sd_value, number_of_values)
~~~
{: .language-r}

E.g.: rnorm(mean=1000, sd=250, 100) 
The above code will generate a list of 100 random values such that they follow a normal
distribution with mean at 1000 and a standard deviation of 250 

To visualize the distribution of the values try running the below set of commands 
values <- rnorm(mean=1000, sd=250, 10000) 
hist(values, main="Normal Distribution", col="steelblue", xlab="Mean=1000, SD=250", freq=F)
lines(density(values), col="yellow", lwd=3) 

hist – Creates a histogram 
lines – Draws the line describing the distribution

![image](https://user-images.githubusercontent.com/91500523/142071552-bc362679-abbc-49fd-9080-6aee0f07ec96.png)


### **Z-SCORES:**

Number of standard deviations the value is away from mean

![image](https://user-images.githubusercontent.com/91500523/142071471-377d6436-eb28-4692-bdf3-362210043fb3.png)




{% include links.md %}
