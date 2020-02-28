# Title     : Chapter 2
# Objective : A Scientific Calculator
# Created by: raul
# Created on: 28/02/2020

mean(0:12) # 6

sum(1:5) # 1 + 2 + 3 + 4 + 5 = 15

median(1:5) # 3

1:5 + 6:10 # 1 2 3 4 5  6 7 8 9 10 - 7 9 11 13 15

c(1, 3, 6, 10, 15) + c(0, 1, 3, 6, 10) # 1 4 9 16 25

c(1, 3, 6, 10, 15) - 2 # -1  1  4  8 13

-2:2 * -2:2 # 4 1 0 1 4

identical(2 ^ 3, 2 ** 3) # TRUE

7:10 / 3 # 2.333333 2.666667 3.000000 3.333333

7:10 %/% 3 # 2 2 3 3

7:10 %% 3 # 1 2 0 1

cos(c(0, pi / 4, pi / 2, pi)) # 1.000000e+00  7.071068e-01  6.123234e-17 -1.000000e+00

identical(acos(-1), pi) # TRUE

factorial(5) == (1 * 2 * 3 * 4 * 5) # TRUE

1:3 == 3:1 # FALSE  TRUE FALSE

all.equal(sqrt(2) ^ 2, 2) # tolerance 1.5e-8

c("a", "b", "c", "b", "d", "a") == "b" # FALSE  TRUE FALSE  TRUE FALSE FALSE

c("A", "B", "C", "D") < "C" # TRUE  TRUE FALSE FALSE

x <- 1:5 # 1 2 3 4 5 LOCAL

x <<- 1:5 # 1 2 3 4 5 GLOBAL

assign("x", 2) # 2 LOCAL

assign("y", 4, globalenv()) # 2 GLOBAL

z <- rnorm(6) # -1.3788064  0.1240482 -2.2651977 -0.7048895  1.2065781 -0.4659778

c(Inf + 1, Inf - 1, Inf + Inf)

c(Inf - Inf) # NaN

c(sqrt(Inf), sin(Inf))

c(log(Inf), log(Inf, base = Inf))

c(NA + NA, NaN + NaN, NaN + NA, NA + NaN) # NA NaN NaN  NA

is.finite(c(0, Inf, -Inf, NaN, NA)) # TRUE FALSE FALSE FALSE FALSE

is.infinite(c(0, Inf, -Inf, NaN, NA)) # FALSE TRUE TRUE FALSE FALSE

is.nan(c(0, Inf, -Inf, NaN, NA)) # FALSE FALSE FALSE TRUE FALSE

is.na(c(0, Inf, -Inf, NaN, NA)) # FALSE FALSE FALSE TRUE TRUE

(x <- 1:4 <= 2) # TRUE TRUE FALSE FALSE

TRUE & FALSE # FALSE

TRUE | FALSE # TRUE

x <- c(TRUE, FALSE, NA)

xy <- expand.grid(x = x, y = x)

within(xy, {
  and <- x & y
  or <- x | y
  not.y <- !y
  not.x <- !x
})

none_true <- c(FALSE, FALSE, FALSE)
some_true <- c(FALSE, TRUE, FALSE)
all_true <- c(TRUE, TRUE, TRUE)

all(none_true) # FALSE

any(some_true) # TRUE
