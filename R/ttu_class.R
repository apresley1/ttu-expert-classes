## create variables
testVar <- 1:10
plot(testVar)

## why to use set.seed

sample(LETTERS, 5)
sample(LETTERS, 5)

# setting a seed to make a random sample reproducible, choose any number you want
set.seed(65)
sample(LETTERS, 5)
set.seed(65)
sample(LETTERS, 5)

##playing with random values
# with argument name, exact argument order
runif(n = 10, min = 1, max = 5)

# without argument name, exact argument order
runif(10, 1, 5)

# with argument name, mixed argument order
runif(min = 1, max = 5, n = 10)

## using R as calculater
# Operators: + - / * ^

sqrt(((1 +   3)/ 2)^2) 

sum(1:10)

## using brackets

# () round brackets as the standard
(1+2)/3
# [] box brackets for index positions
x <- 101:110
x[3]
# {} curled brackets for functions and loops
testFun <- function(var_1) {var_1^2}
testFun(3)

## creating objects in R
# sequence function
?seq
var_2 <- seq(from = 50, length = 10)
var_2 = seq(from = 100, length = 10, by = 10)

#paste 
paste(10:20)

class(paste(10:20)) # checking the class

paste("10 multiples", 1:10, "gives ", seq(from = 100,length = 10,by =100))

paste("10 multiples", 1:10, "gives ", seq(from = 100,length = 10,by =100), sep = "|")

#repeat function
?rep # next function

rep(c(3,4,5), 3)

rep(1:10, times = 3)

#check class

#logical
ab <- TRUE 
print(class(ab))

#numeric
bc <- 99.99
print(class(bc))

#interger
cd <- 99L
print(class(cd))

#complex
de <- 2+5i
print(class(de))

#charcter
ef <- "apple"
print(class(ef))
ef

#raw
fg <- charToRaw("apple")
print(class(fg))
fg

#vector hold elements of different classes
# Create a vector.
#c is use to combine
apple <- c('red','green',"yellow")
print(apple)

# Get the class of the vector.
print(class(apple))

#other are list, matrices, array, factors, data frame

#list objects
ls()

#remove objects
rm(x)
rm(list = ls())

## functions in R
fun_1 <- function(x) {x+x}
fun_1(10)

## condition and loops in R

x <- 0

if(x > 0){
  print("Positive number")
} else if (x < 0) {
  print("Negative number")
}
else 
  print("Zero")

#create function out of it
checkNum <- function(x) {
  
  if(x > 0){
    print("Positive number")
  } else if (x < 0) {
    print("Negative number")
  }
  else 
    print("Zero")
}

x <- runif(min = -10, max = 10, n = 10)

for (var_3 in x) {
checkNum(var_3)
}

#difference of R

#m <- matrix(c(seq(from=-10,to=10,by=2)),nrow=10,ncol=1)
m <- matrix(x,nrow=10,ncol=1)
m
class(m)

checkNum(m[10])

#apply to run function
z <- sapply(m,checkNum, simplify =  "array")
#combine them to our metrix
m <- cbind(m,z)

## data frame in R
#A data frame is used for storing data tables. It is a list of vectors of equal length

?airmiles

head(airmiles) # first 6 rows

tail(airmiles) # last 6 rows

summary(mtcars)

plot(mtcars) # simple xy plot function of R Base

hist(airmiles) # histogram

head(mtcars)

sum(mtcars$wt)

attach(mtcars) # attach to R session environment

sum(wt) # now R knows which data.frame to use since it is attached

detach(mtcars) # remove it from environment

sum(wt) # error message since mtcars it not attached any more

mtcars[2,6]

mtcars[c(2,5,8),6]

##plot graphs in R
# 3 main data viz systems: 
# ggplot2, lattice and R Base

x=5:7 # 3 data points, integers
y=8:10

# default plot output here is a scatterplot
plot(x,y)

# data is a time series, default here is a line plot
?lynx
plot(lynx)

# title, color, title color, title magnification
plot(lynx, main="Lynx Trappings", col="red")

# label names
plot(lynx, ylab="Lynx Trappings", xlab="")

# label orientation
plot(lynx, ylab="Lynx Trappings", xlab="", las=2)

#boxplot
boxplot(mpg~cyl,data=mtcars, main="Car Milage Data", 
        xlab="Number of Cylinders", ylab="Miles Per Gallon")
#histrogram
hist(AirPassengers)

hist(AirPassengers, 
     main="Histogram for Air Passengers", 
     xlab="Passengers", 
     border="blue", 
     col="green",
     xlim=c(100,700),
     las=1, 
     breaks=5)

#ggplot 
install.packages("ggplot2")
library(ggplot2) 
qplot(mpg, data=mtcars, geom="density", fill=gear, alpha=I(.5), 
      main="Distribution of Gas Milage", xlab="Miles Per Gallon", 
      ylab="Density")

### Exercise
# 1 . Create the object "myobject" and assign the values 1:10 
# in at least 3 different ways
# 2. Get the sum of your object
# 3. Create the following vector by using the paste function
"R is great 4 and I will love it"
"R is great 7 and I will love it"
"R is great 45 and I will love it"
# 4. vector of 1,2,3 : repeat the vector to get 11 x 1, 10 x 2, and 10 x 3
# 5. What is the value of this vector on position 7


## Solutions
# 1 . Create the object "myobject" and assign the values 1:10 
# in at least 3 different ways
myobject <- (1:10)
myobject = (1:10)
(1:10) -> myobject
assign("myobject", 1:10)
# 2. Get the sum of your object
sum (myobject)
# 3. Create the following vector by using the paste function
"R is great 4 and I will love it"
"R is great 7 and I will love it"
"R is great 45 and I will love it"
paste ("R is great", c(4,7,45), "and I will love it")
# 4. vector of 1,2,3 : repeat the vector to get 11 x 1, 10 x 2, and 10 x 3
x = rep(1:3, length = 31); x
# 5. What is the value of this vector on position 7
x[7]
