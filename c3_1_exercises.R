# Title     : Chapter 3 - Exercises
# Created by: raul
# Created on: 11/04/2020

#3-1

is.integer(5L)
is.numeric(5L)
is.complex(5.4 + 10i)

#3-2

lev <- nlevels(factor(c(1, 2, 1, 2, 1, 2)))

#3-3

num <- as.numeric("6.283453")

class(num)

#3-4

summary(c(20:30))
head(c(10:15))
attributes(num)

#3-5

rm(list = ls())

#3-1-1

class(Inf)
class(NA)
class(NaN)
class("")

#3-2-1

animals <- factor(sample(c("dog", "cat", "hamster", "gold-fish"), 1000, replace = TRUE))
head(animals)
summary(animals)

#3-3-1

banana <- 2
carrot <- 3
tomato <- 4
swede <- 5

ls(pattern = "a")



