getwd()

print("Welcome to R")
print("More print statements")
print("More print statements")
print("More print statements")

12+50
12/3

#variables
#Types:
#Numeric, Character, Logical, Date, Vector (sequence of values), Matrix
#Factor (unordered categories) , Ordered (ordered categories), List,
#DataFrame

# <-  or = is for assignment

num1 <- 34
num2 <- 45
sumnum = num1+num2 # - / * +
print(sumnum)

ls()

newenv = new.env("test_env")
# accessing fields ogf objects

newenv$newval = 30

print(newenv$newval)

rm(newenv)

rm(list = ls())

#installing packages
install.packages("tidyverse")

library("tidyverse")

help.search("ls()")

?ls
??ls

v = c(2,3,4,5,6)

#built in functions

sum(v)
length(v)

vs = c("a","b","c","f","a")

class(vs)

# sequences

seq(1,10)

1:10

seq(1,10,2)

seq1 = 1:20

seq1/2

seq1*2

# integer division
1:10 %/% 3

#remainder
1:10 %% 3

# comparison operators:
# < > != (inequality)  == (equality)


c(1,3,-3,2,2,-10) == 3


is.numeric(c(1,3,-3,2,2,-10) )

is.character(c('a','b','c'))

?matrix

x <- matrix(data=c(1,2,3,4,5,6,7,8,9),nrow = 3,ncol = 3)
x

dim(x)

sum(x)

sqrt(x)

mean(x)

colSums(x)
rowSums(x)

x*2
x
x * c(2,3,3)

x*c(2,2)

#Factor type

# categorical var: ex: gender "Male" "Female"

gender = c("male","female","female","male","male")

gender_factor <- factor(gender)

levels(gender_factor)

summary(gender_factor)

?sample
#unordered, nominal categorical variables

gender_char = sample(c("male","female"),10000,replace = TRUE)

gender_char

gender_factor <- factor(gender_char)

summary(gender_factor)

sizes = sample(c('small','medium','large'),1000,replace=TRUE)


sizes_fac = factor(sizes, levels=c("small","medium","large"),ordered = TRUE)

summary(sizes_fac)

#ordered() -> same as favtor but additionally ordered

#conditional statements if- else

num<-100

# < > != ==

if(num<30){
  
  print("num is less than 30")
}else{
  print("num is greater than 30")
}


x <- 30

if(x<30){
  print("num is less than 30")
}else if(x<40){
  print("num is 30-40")
}else{
  print("num is over 40")
}


ifelse(x<40,print("less"),print("over or equal"))

#loops

for(i in 0:100){
  
  print(i)
  
}


names = c("jack","john","henry","william")

for(var in names){
  print(var)
}

for(i in 0:length(names)){
  print(i)
  print(names[i])
}

# Functions

add_two <- function(a,b){
  
  print(a+b)
  
}

add_two(2,3)

add_two <- function(a,b){
  
  return(a+b)
  
}
add_two(2,3)

#count even numbers in a vector:

v <- c(2,4,3,6,70,1,2,34,555,77)

count_even <- function(arr){
  
  count<- 0
  
  for(val in arr){
    
    if(val%%2==0){
      count = count+1
    }
    
  }
  
  return(count)
  
}


count_even(v)


Rectangle = function(length=5, width=4){
  area = length * width
  return(area)
}

Rectangle(10,10)




