# Title     : Chapter 4
# Objective : Vectors, Matrices and Arrays
# Created by: raul
# Created on: 11/04/2020

vector("numeric", 5) # 0 0 0 0 0

numeric(5) # 0 0 0 0 0

vector("logical", 5) # FALSE FALSE FALSE FALSE FALSE

seq.int(3, 12) # 3 4 5 6 7 8 9 10 11 12

seq.int(3, 12, 2) # 3 5 7 9

length(1:5) # 5

sn <- c("Sheena", "leads", "Sheila", "needs")

length(sn) # 5

nchar(sn)

pointcare <- c(1, 2, 3, 4, 5, 6)

length(pointcare) <- 3

pointcare # 1 2 3

length(pointcare) <- 8

pointcare # 1 2 3 NA NA NA NA NA

fruits <- c(apple = 1,
            banana = 2,
            kiwi = 3)

names(fruits) # "apple" "banana" "kiwi"

x <- (1:5) ^ 2

x[c(1, 3, 5)] # 1 9 25

x[c(-2,-4)] # 1 9 25

x[c(TRUE, FALSE, TRUE, FALSE, TRUE)] # 1 9 25

names(x) <- c("one", "four", "nine", "sixteen", "twenty five")

x[c("one", "nine", "twenty five")] # 1 9 25

x[c(1, NA, 5)]

x[1.6] # one-1

x[-1.6] # 4 9 16

which(x > 10) # sixteen twenty five

which.min(x) #one-1

which.max(x) # twenty five 25

1:5 + 1 # 2 3 4 5 6

1:5 + 1:15 # 2  4  6  8 10  7  9 11 13 15 12 14 16 18 20
# 1 2 3 4 5 1 2 3 4  5  1  2  3  4  5
# 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15

rep(1:5, 3) # 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5

rep(1:5, each = 3) # 1 1 1 2 2 2 3 3 3 4 4 4 5 5 5

rep(1:5, times = 1:5) # 1 2 2 3 3 3 4 4 4 4 5 5 5 5 5

rep(1:5, length.out = 7) # 1 2 3 4 5 1 2

three_d_array <- array(1:24,
                       dim = c(4, 3, 2),
                       dimnames = list(
                         c("one", "two", "three", "four"),
                         c("ein", "zwei", "drei"),
                         c("un", "deux")
                       ))

class(three_d_array)

a_matrix <- matrix(1:12,
                   nrow = 4,
                   dimnames = list(c("one", "two", "three", "four"),
                                   c("ein", "zwei", "drei")))

class(a_matrix)

two_d_array <- array(1:12,
                     dim = c(4, 3),
                     dimnames = list(
                       c("one", "two", "three", "four"),
                       c("ein", "zwei", "drei")
                     ))

identical(a_matrix, two_d_array)

dim(three_d_array) # 4 3 2

nrow(a_matrix) # 4

ncol(a_matrix) # 3

length(a_matrix) # 12

vec <- c(1, 2, 3, 4, 5)

NROW(vec) # 5
NCOL(vec) # 1

rownames(a_matrix) # "one" "two" "three" "four"

colnames(a_matrix) # "ein" "zwei" "drei"

dimnames(a_matrix)

a_matrix[1, c("zwei", "drei")] # 1st row, 2nd and 3rd cols

a_matrix[1,] # all cols

a_matrix[, c("zwei", "drei")] # all 2nd and 3rd cols

another_matrix <- matrix(seq.int(2, 24, 2),
                         nrow = 4,
                         dimnames = list(
                           c("five", "six", "seven", "eight"),
                           c("view", "funf", "sechs")))

c(a_matrix, another_matrix) # 1 2 3 4 5 6 7 8 9 10 11 12 2 4 6 8 10 12 14 16 18 20 22 24

cbind(a_matrix, another_matrix) # col bind

rbind(a_matrix, another_matrix) # row bind

a_matrix + another_matrix

a_matrix * another_matrix

t(a_matrix)

a_matrix %*% t(a_matrix)

1:3 %*% 4:6 # inner multiplication

outer(1:3, 4:6)

m <- matrix(c(1, 0, 1, 5, -3, 1, 2, 4, 7), nrow = 3)

(inverse_of_m <- solve(m))

m %*% inverse_of_m