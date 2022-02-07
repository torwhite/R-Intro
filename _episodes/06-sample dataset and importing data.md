---
title: "sample dataset and importing data in R studio"
time: 0
objectives:
- " learning how to use the sample dataset"
- "understanding how to import data in R studio"
- 
keypoints:
- "First key point. Brief Answer to questions. (FIXME)"
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


