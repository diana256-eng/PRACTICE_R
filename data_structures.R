#matrix; it is a 2 dimensional array made up of elements of the same type
a <- matrix(1:30,nrow = 5,ncol = 6) #creating a matrix of length 30 , with 5 rows and 6 columns
dim(a) 
is.matrix(a) #verifying if a is a matrix
ncol(a) 
nrow(a)
length(a) # no. of observations ie rows*columns

#dataframe: similar to a matrix, however elements are of different types; e.g characters & numerics

# : Most powerful structure for looping, can consist of any data type, and of different length
x <- c(1:5)
y <- c("kisakye", "kirabo", "suubi")
z <- c("red" ,"blue")
list_1 <- list(y,z,x) # remember to specify the list argument before the parathesis
list_1
is.list(list_1) #(elements can be character vectors, logical vectors,numerical vectors,integers etc)
str(list_1)
 # []extract elements from a list
list_1[[1]] #e.g extract the first elemnt of the list
list_1[[1]][1]# extract the first component of the first element
 #arrays
str(Titanic)
apply(Titanic,1,sum) #use apply to summarise data in arrays and other datasets
apply(Titanic,3,sum)
apply(Titanic,c(3,4),sum)
lapply(iris, class) #will summarise values from a list
str(iris)
sapply(iris, class)# will simplify values from a dataset
sapply(iris,function(x) if (is.numeric(x)) mean(x) else NA)
#tapply ;summarises tabular data
tapply(iris$Sepal.Length,iris$Species, mean)
with(iris,tapply(Sepal.Length,Species, mean)) #using "with" together with tapply
str(mtcars)
cars <- transform(mtcars, am = factor(am, levels = 0:1, labels =c("Automatic","Manual"))) #you can transform data by changin gthe levels
with(cars, tapply(mpg, am, mean))
# aggregate() function can perform a function similar to that of tapply
