data()
data = mtcars
head(data, n = 3)
tail(data, n = 3)
str(data)
class(data)
class(data$mpg)
dim(data)
names(data)
mean(data)
mean(data$mpg)
var(data$mpg)
sd(data$mpg)
min(data$mpg)
max(data$mpg)
median(data$mpg)
quantile(data$mpg)
range(data$mpg)
summary(data$mpg)
summary(data)
hist(data$mpg, xlab = "MPG", probability = TRUE, , main = "Histogram")
plot(data$mpg, data$hp, xlab = "MPG", ylab = "Horsepower")
plot(data$hp, data$wt, xlab = "Horsepower", ylab = "Weight")
sapply(data, mean)

The Descriptive Statistics 

#install.packages("pastecs")
library("pastecs")
round(stat.desc(data), 2)

# Histogram
hist(data$mpg, xlab = "MPG", probability = TRUE, , main = "Histogram")

histogram = hist(data$mpg)
histogram

# Density Plot

density <- density(mtcars$mpg)
plot(density, main="Kernel Density of Miles Per Gallon")

# Compare Density

install.packages("sm")
library(sm)
attach(mtcars)

# create value labels
cyl.f <- factor(cyl, levels= c(4,6,8),
  labels = c("4 cylinder", "6 cylinder", "8 cylinder"))

# plot densities
sm.density.compare(mpg, cyl, xlab="Miles Per Gallon")
title(main="MPG Distribution by Car Cylinders")

# add legend via mouse click
colfill<-c(2:(2+length(levels(cyl.f))))
legend(locator(1), levels(cyl.f), fill=colfill)

# Box Plot


