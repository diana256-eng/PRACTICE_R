str(iris)
iris[1:5,]
iris_1 <- iris[, c("Sepal.Length","Sepal.Width")]
head(iris_1, 8)
iris[, "Sepal.Length"]
iris[, "Sepal.Length" , drop = FALSE]
iris["Sepal.Length"]
iris[1:5,c("Sepal.Length","Sepal.Width")]
set.seed(1)
sample(1:6, 10, replace = TRUE)
?set.seed()
set.seed(123)
index <- sample(nrow(iris), 5)
index
duplicated(iris)
iris[!duplicated(iris), ]
index <- which(duplicated(iris))
iris[-index,]
str(airquality)
complete.cases(airquality)
x <- airquality[complete.cases(airquality), ]
str(x)
x <- na.omit(airquality)
str(x)
