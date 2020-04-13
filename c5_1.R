# Title     : Chapter 5
# Objective : Lists and Data frames
# Created by: raul
# Created on: 13/04/2020

(a_list <- list(c(1, 2, 3, 4, 5), month.abb, matrix(c(3, -8, 1, -3), nrow = 2), asin))

names(a_list) <- c("catalan", "months", "involutary", "arsin")

(named_list <- list(catalan = c(1, 2, 3, 4, 5), 
                    months = month.abb, 
                    involutary = matrix(c(3, -8, 1, -3), nrow = 2), 
                    arcsin = asin))

main_list <- list(inner_list = list(c(1:3)), months = month.abb)

main_list$inner_list
main_list$months

is.atomic((list())) # FALSE

is.recursive(list()) # TRUE

is.atomic(numeric()) # TRUE

is.recursive(numeric()) # FALSE

is.atomic(integer()) # TRUE

nrow(a_list) # NULL

NROW(a_list) # 4

NCOL(a_list) # 1

l1 <- list(v1 = 1:5)

l2 <- list(v1 = 6:10)

l1[[1]] + l2[[1]] # 7 9 11 13 15

l <- list(first = 1, second = 2, third = list(alpha = 3.1, beta = 3.2))

l[c(1, 2)] # first & second

l[-2] # first & third

l[c("first", "second")] # first & second

l[c(TRUE, FALSE, TRUE)] # first & third

is.list(l[1]) # [1] - true

is.numeric(l[[1]]) # 1 - true

is.list(l[["third"]]["alpha"]) # [3.1] - true

is.numeric(l[["third"]][["alpha"]]) # 3.1 - true

l[["fourth"]] # NULL

l$fourth # NULL

busy_beaver <- c(1, 6, 21, 107)

as.list(busy_beaver)

as.numeric(list(1, 6, 21, 107))

prime_factors <- list(
  two = 2,
  three = 3,
  four = c(2, 2),
  five = 5,
  six = c(2, 3),
  seven = 7,
  eight = c(2, 2, 2),
  nine = c(3, 3),
  ten = c(2, 5)
)

unlist(prime_factors)

c(list(a = 1, b = 2), list(3))

length(NULL) # 0

length(NA) # 0

(channels <- list(rtp = 1, sic = 3, tvi = 4))

channels$rtp <- NULL

length(channels) == 2 # TRUE

channels$rtp <- list(NULL)

length(channels) == 3 # TRUE

(a_data_frame <- data.frame(
  x = letters[1:5],
  y = rnorm(5),
  z = runif(5) > 0.5
))

class(a_data_frame) # "data.frame"

# row names
y <- rnorm(5)
names(y) <- month.name[1:5]
data.frame(
  x = letters[1:5],
  y,
  z = runif(5) > 0.5
)

# DISABLE row names
y <- rnorm(5)
names(y) <- month.name[1:5]
data.frame(
  x = letters[1:5],
  y,
  z = runif(5) > 0.5,
  row.names = NULL
)

# CUSTOM row names
y <- rnorm(5)
names(y) <- month.name[1:5]
data.frame(
  x = letters[1:5],
  y,
  z = runif(5) > 0.5,
  row.names = c("la", "le", "li", "lo", "lu")
)

rownames(a_data_frame) # "1" "2" "3" "4" "5"

colnames(a_data_frame) # "x" "y" "z"

nrow(a_data_frame) # 5

ncol(a_data_frame) # 3

ncol(a_data_frame) == length(names(a_data_frame)) # TRUE

ncol(a_data_frame) == length(a_data_frame) # TRUE

dim(a_data_frame) # 5 3

data.frame(x = 1, y = 2:3, z = 4:7)

a_data_frame[2:3, -3] # shows 2 and 3

class(a_data_frame[2:3, -3]) # "data.frame"

class(a_data_frame[2:3, 1]) # "factor"

a_data_frame$x[2:3]
