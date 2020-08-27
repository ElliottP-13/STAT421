setwd("C:/Users/pryor/Documents/GitHubProjects/STAT421")
survey <- read.csv("./data/survey-data.csv", head = T)

# look at first six rows of data frame
head(survey)

# names of columns (vars) in data frame
names(survey)

table(survey$Eye.Color)
table(survey$Eye.Color)/sum(table(survey$Eye.Color))
barplot(table(survey$Eye.Color))


help(rnorm)
set.seed(111)

x1 <- rnorm(n = 5, mean = 5, sd = 2)

x1
mean(x1)
sd(x1)
summary(x1)

hist(x1, nclass = 5, col = "red")
hist(x1, freq = FALSE, nclass = 5, col = 'red')


x2 <- rnorm(n = 20, mean = 5, sd = 2)
x2
mean(x2)
sd(x2)
summary(x2)

par(mfrow = c(1,2))
hist(x1, nclass = 5, col = "red")
hist(x2, nclass=5, col = "cyan")


set.seed(3)
x <- rnorm(9, 6, 2)
x

#concat original x with single value 20 (append to list)
x_10 <- c(x, 20)
mean(x)
mean(x_10)

# first 5 elements
x_10[1:5]

#ninth element
x[9]

#first element......
x[1]


#all elements except first
x[-1]


