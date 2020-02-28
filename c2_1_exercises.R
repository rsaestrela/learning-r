# Title     : Chapter 2 - Exercises
# Created by: raul
# Created on: 08/03/2020

#2-1-1
atan(1/1:1000)

#2-1-2
x <- 1:1000
y <- atan(1/x)
z <- 1/tan(y)
z

#2-2-1
x == z
identical(x, y)
all.equal(x, y)
all.equal(x, y, 0)

#2-3-1

true_and_missing <- c(TRUE, NA)
any(true_and_missing)
all(true_and_missing)

false_and_missing <- c(FALSE, NA)
any(false_and_missing)
all(false_and_missing)

mixed <- c(TRUE, FALSE, NA)
any(mixed)
all(mixed)