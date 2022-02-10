---
title: "sample dataset and importing data in R studio"
time: 0
objectives:
- " learning how to use the sample dataset"
- "understanding how to import data in R studio"

keypoints:
- ""
---

## Sample Dataset 

-	One of the great and easiest ways to start experimenting with the analysis in R is by means of built-in sample datasets available in R. These datasets are available in their own package. 

-	Use the code provided in the script to load the dataset and then toggle through help function to know the complete information of the dataset.

~~~

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

~~~
{: .language-r}


### Importing data 
There are multiple commands with various arguments to import data from different file formats into R environment. I shall show the simplest command to import a csv file as a data frame 

data_frame_name <- read.csv(file. choose(), header = T)

Here, file. choose() - Allows you to choose a .csv file stored in your local desktop

Here, header = T - Indicates the first column in the file contains column names.
[importing data](../fig/06-importing data.PNG)


Double click (or) click once and select open on your desired file to import 

Once the data has been imported successfully the data frame would be visible with its name in the Environment part on the top right.

### Packages 

-	One of the most important things in R is its collection of Packages. The package is a collection of R functions, data, and compiled code and Library is the location where the packages are stored. In order to access these packages, we can either go to r-project. Org > CRAN> 0 Cloud> packages>CRAN task view or use the command library() to load the package in the current R session.
-	Then just call the appropriate package functions 

install.packages("package_name") – Install the package from CRAN repository 

install.packages( c("package_1", “"package_2", "package_3") ) -Install multiple packages

library("package_name") – Load the package in current R session.

-	One of the other way is to install a meta-reference which means it’s a package for packages which is the pacman 
this will then load or put into active memory a few essential packages

~~~
Install pacman ("package manager") if needed
if (!require("pacman")) install.packages("pacman")

# Load contributed packages with pacman
pacman::p_load(pacman, party, psych, rio, tidyverse)
# pacman: for loading/unloading packages
# party: for decision trees
# psych: for many statistical procedures
# rio: for importing data
# tidyverse: for so many reasons

~~~
{: .language-r}

~~~
library(datasets)  # For example datasets

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
  
  ~~~
{: .language-r}










