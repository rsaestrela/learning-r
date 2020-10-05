# Title     : Chapter 5 - Exercises
# Created by: raul
# Created on: 19/04/2020

#5-1

a_list <- list(alpha = 1, list(beta = 2, gama = 3, delta = 4), eta = NULL)

length(a_list)

#5-2

#

#5-3

# a_data_frame$x[2:3]

# a_data_frame[[1]][2:3]

# a_data_frame[["x"]][2:3]

# a_data_frame[a_data_frame$y > 0 | a_data_frame$y, "x"]

# subset(a_data_frame, y > 0, x)

#5-4

another_data_frame <- data.frame(
  "x" = 1:5, 
  NULL = 6:10, 
  check.names = TRUE
)

another_data_frame

#5-5

rbind()

cbind()

# 5-1-1

list_square <- list(first = (0:9) ^ 2, second = (10:19) ^ 2, third = (10:19) ^ 2)

list_square