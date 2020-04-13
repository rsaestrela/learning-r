# Title     : Chapter 4 - Exercises
# Created by: raul
# Created on: 13/04/2020

#4-1

seq.int(0, 1, 0.25)

#4-2

c(smartphone = 1,
  tablet = 2,
  laptop = 3)

x <- 1:3
(names(x) <- c("smartphone", "tablet", "laptop"))

#4-3

x[c("smartphone", "tablet", "laptop")] # 1, 2, 3
x[c(1, NA, 3)]
x[c(-2)]
x[2.6]

#4-4

3 * 4 * 5

#4-5

#%*%

#4-1-1

n <- c(1:20)

triangular <- n * (n + 1) / 2

names(triangular) <- letters[n]

triangular[c("a", "e", "i", "o", "u")]

#4-1-1

diag(abs(seq.int(-11, 11)))

#4-1-1

(identity_20_by_21 <- diag(rep.int(1, 20), 20, 21))

(below_the_diagonal <- rbind(0, identity_20_by_21))

(identity_21_by_20 <- diag(rep.int(1, 20), 21, 20))

(above_the_diagonal <- cbind(0, identity_21_by_20))

(on_the_diagonal <- diag(abs(seq.int(-10, 10))))

(wilkinson_21 <- below_the_diagonal + above_the_diagonal + on_the_diagonal)

eigen(wilkinson_21)$values