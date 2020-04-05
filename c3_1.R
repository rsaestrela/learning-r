# Title     : Chapter 3
# Objective : Inspecting Variables and Your Workspace
# Created by: raul
# Created on: 05/04/2020

class(c(TRUE, FALSE)) # "logical"

class(1:5) # "integer"

class(0.5:5.5) # "numeric"

class(sqrt(1:10)) # "numeric"

class(1) # "numeric"

class(1L) # "integer"

class(3 + 1i) # "complex"

.Machine

class(c("he", "sells", "fish")) # "character"

(gender <- factor(c("male", "female", "female", "male", "female"))) # Levels: female male

levels(gender) # "female" "male"

nlevels(gender) # 2

as.integer(gender) # 2 1 1 2 1

gender_char <- sample(c("female", "male"), 10000, replace = TRUE)

object.size(gender_char) # 80160 bytes

gender_fact <- as.factor(gender_char)

object.size(gender_fact) # 40560 bytes

as.raw(1:18) # 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f 10 11 12

sushi <- charToRaw("Fish!")

class(sushi) # "raw"

class(c(1, "fish")) # "character"

is.character("meat") # TRUE

is.logical(FALSE) # TRUE

is.list(list(a = 1, b = 2)) # TRUE

ls(pattern = "^as", baseenv())

ls(pattern = "^is", baseenv())

is.integer(1L) # TRUE

is.integer(1) # FALSE

x <- "123.456"

as(x, "numeric") # same as.numeric(x)

as.integer(x) # 123

num <- runif(30)

summary(num)

fac <- factor(sample(letters[1:10], 30, replace = TRUE))

summary(fac)

bool <- factor(sample(c(TRUE, FALSE, NA), 30, replace = TRUE))

summary(bool)

dfr <- data.frame(num, fac, bool)

head(dfr)

summary(dfr)

unclass(fac)

attributes(fac)

# View(dfr)

# new_dfr <- edit(dfr)

ls()

# browseEnv()
