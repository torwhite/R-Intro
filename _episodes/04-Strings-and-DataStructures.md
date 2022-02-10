---
title: "Intoduction to strings and data structures "

objectives:
- "understand basics of strings and string manipulation"
- " understanding different data structure"
- "learn about functions of each data structure"
keypoints:
- "understanding strings and vectors"

---

## Strings

- Strings are made of a single character or contain a collection of characters.
- Strings can be created by either single quotes (‘ ‘) or double quotes (“ “)

**Rule for String in R**

-	String starts and ends with a single quote. Double quotes (“ “), and through the escape sequence (‘/’), single quote can become a part of the string.
Example- ‘buses’, ‘merry”s’, ‘ merry\’s’

-	String start and end with a double quote. Single quote (‘ ‘), and through the escape sequence (‘\’), double quote can become a part of the string
Example : “buses”, “merry’s”, “ merry\”s”

~~~
# input code string concatenation
Count number of characters in string
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
z
~~~
{: .language-r}

~~~
# output
> x1 <- "Olivia"
> x2 <- "Jhon"
> x3 <- "William"
>
> #checking number of characters
> nchar(x1)
[1] 6
> nchar(x2)
[1] 4
> nchar(x3)
[1] 7
> # Letters using vector function in R
> # Check the sequence of letters
> letters
 [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x"
[25] "y" "z"
> letters[4]
[1] "d"
> letters[1:5]
[1] "a" "b" "c" "d" "e"
> # String Concatenation
> # Paste function is used with syntax below:
> # paste(..., sep = " ", collapse = NULL)
> x <- paste("Hello","World", "!", sep = " ", collapse = "--")
> x
[1] "Hello World !"
> z<- paste("Hello","everyone","!", sep =" ")
> z
[1] "Hello everyone !"
> y <- paste(x1, x2, x3, "is happy.")
> y
[1] "Olivia Jhon William is happy."
> x4 <- c("Olivia", "Jhoin", "William")
> y1 <- paste(x4, "is happy.")
> y1
[1] "Olivia is happy."  "Jhoin is happy."   "William is happy."
> y2 <- paste(x4, "is happy.", collapse = " -- ")
> y2
[1] "Olivia is happy. -- Jhoin is happy. -- William is happy."
> z1 <- c("Please bring me", "a few ")
> z2 <- c("some vegetables", "fruits")
> z <- paste(z1, z2, collapse = " and ")
> z
[1] "Please bring me some vegetables and a few  fruits"
>
~~~
{: .output}

## Data Structure

### Vector

Vectors are the basic data structure of R. Vectors can hold multiple values together using the concatenate **c()** function. The type of data inside a vector can be determined by using the **type of()** function and the length (or) number of elements in a vector can be found with the **length()** function.

R uses **one indexing** unlike python, hence the position of the first component in a vector can be accessed by vector name [1]

A vector will always **contain** data of the **same data type**. If a vector contains multiple data types the vector will convert all its values to the same data type in the below order of precedence:
- Character

- Double (Float / Decimals)

- Integers (Round whole numbers)

~~~
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

~~~
{: .language-r}

~~~
# output
> v1 <- c(1, 2, 3, 4, 5)
> v1
[1] 1 2 3 4 5
> is.vector(v1)
[1] TRUE
>
> v2 <- c("a", "b", "c")
> v2
[1] "a" "b" "c"
> is.vector(v2)
[1] TRUE
>
> v3 <- c (TRUE, TRUE, FALSE, FALSE, TRUE)
> v3
[1]  TRUE  TRUE FALSE FALSE  TRUE
> is.vector(v3)
[1] TRUE
>
> v4<- c (TRUE, TRUE, "a", 5)
> v4
[1] "TRUE" "TRUE" "a"    "5"   
> typeof(v4)
[1] "character"
>

~~~
{: .output}


#### **Analyzing a Vector**

class(vector_name) - Type of data present inside the vector

str(vector_name) - Structure of the vector

is.na(vector_name) - Checks if each element of vector is “NA”

is.null(vector_name) - Checks if the entire vector is empty

length(vector_name) - Number of elements present inside the vector

~~~
> x <- c(1,2,3,4)
> class(x)
[1] "numeric"
> str(x)
 num [1:4] 1 2 3 4
> length(x)
[1] 4
>
> x<- c(1,2,3,4)
> is.na(x)
[1] FALSE FALSE FALSE FALSE
> is.null(x)
[1] FALSE
>
> x<- c(TRUE, FALSE, TRUE, TRUE)
> class(x)
[1] "logical"
> str(x)
 logi [1:4] TRUE FALSE TRUE TRUE
> length(x)
[1] 4
>
> x<- c(1,2,3,4,NA)
> is.na(x)
[1] FALSE FALSE FALSE FALSE  TRUE
> x<- c()
> is.null(x)
[1] TRUE

~~~
{: .language-r}



####  **Subsetting a vector**

R uses one-indexing mechanism where the elements in the vector start with an index number of one.

vector_name[4] - Element at the fourth position (index) in the vector

vector_name[1:4] - Elements from positions 1 to 4 in the vector

vector_name[c(1,4)] - Elements at positions 1 & 4 only in the vector

vector_name[-c(1,4)] - All elements except those at positions 1 & 4 in the vector

~~~
> x <- c("A", "B", "C", "D", "E")
> x[1]
[1] "A"
> x[4]
[1]"D"

> x[1:4]
[1] "A", "B", "C", "D"

> x[c(1,4)]
[1] "A" "D"

> x[-c(1,4)]
[1] "B", "C", "E"

~~~
{: .language-r}

#### **Sorting a vector**

Sorting of a vector can be performed using two different functions

sort(vector) - Sorts the vector numerically or alphabetically based on vector type
              (ascending by default)

order(vector) - Returns the indices of the vector in the order they would appear when
                the vector is sorted (ascending by default)

~~~
> x<- c("D","B","A","E","C")
> sort(x)
[1] "A" "B" "C" "D" "E"
> order(x)
[1] 3 2 5 1 4
> x[order(x)]
[1] "A" "B" "C" "D" "E"
> sort (x, decreasing = TRUE)
[1] "E" "D" "C" "B" "A"
> order(x, decreasing = TRUE)
[1] 4 1 5 2 3
> x[order(x, decreasing = TRUE)]
[1] "E" "D" "C" "B" "A"

~~~
{: .language-r}

### Vector indexing

~~~
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

~~~
{: .language-r}

~~~
> # 1. Logical Index Vector
> vec1 <- 12:17
> v_logindx <- vec1[c(F, F, T, F, T)]
> v_logindx
[1] 14 16
> # -----------------------------------------
> # 2. Positive-Integral Index Vectors
> vec2 <- 12:22
>
> # Accessing directly using a single index number
> x1 <- vec2[2]
> x1
[1] 13
>
> # Accessing using the c() function for multiple index values
> x2 <- vec2[c(2, 5, 7)]
> x2
[1] 13 16 18
>
> access_values <- c(2, 5, 7)
> x3 <- vec2[access_values]
> x3
[1] 13 16 18
>
> # ----------------------------------------
> # 3. Negative Integral Index Values
> x4 <- vec2[c(-1, -4, -3)]
> x4
[1] 13 16 17 18 19 20 21 22
>
>
> # ----------------------------------------
> # 4. Character Indexing
> vec_named <- c("Apple" = 1, "Banana" = 2, "Orange" = 5, "Pears" = 8)
> vec_named
 Apple Banana Orange  Pears
     1      2      5      8
> x5 <- vec_named[c("Banana", "Pears")]
> x5
Banana  Pears
     2      8

~~~
{: .output}
