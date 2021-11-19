---
title: "Basic arithmatic functions "
teaching: 0
exercises: 0

objectives:
- "learn about the Rstudio panes"
- "perform basic arithematic functions"
keypoints:
- "Hvae Rstudio installed along with R"
---

Codes can be directly run in the R console. Try running the below code to perform basic 
arithmetic operations of Addition (+), Subtraction (-), Multiplication (*), Division (/) and Modulo (%%) 
operation directly in the console.

![Console image](fig/02 - basic math functions.jpg)

Implementing the same code in the script area. If you do not see a file open in the script 
area select **File → New File → R Script** from the menu and then type the code in the new file that appears.

Now the code in the script area (or R File) does not execute automatically, instead place 
the cursor on the line which needs to be executed and select **RUN** option or press **Ctrl + Enter**(for windows). 

To run multiple lines of code, select all the lines first and then select **RUN** option or press **Ctrl + Enter**.

[FIXME Script area image]


Values can be assigned to variables in R using the “<-” symbol. The variable is written on the left 
and is assigned the value on the right side. For example, to assign a value of 3 to x we can type the below code, 
x <- 3 

Assigning values to variables are quite useful especially if these values would be used again. 
Similar to the previous examples, operations can be performed on the variables to get output 
directly (or) the output can be stored in a different variable. 
Once a variable is created it will be visible under the environment section

One thing to be aware of is that R is **case-sensitive**. Hence variable “a” is different from “A”

[FIXME console and environment pane image]

{% include links.md %}
