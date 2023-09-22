# a playground to get us started with R

# expression
1 + 2
2 ^ 3

# variable
x <- 2 ^ 3

# EXERCISE
# write an expression to find the area of a circle with radius 3m
# assign the result to a variable area
area <- 3.14 * 3^2
area

area1 <- pi * 3^2
area1

# variable names are case sensitive
Area <- 10
Area
area

# vectors
dice <- 1:6
dice

dice_new <- c(1, 2, 3)
dice_new

dice_seq <- seq(from = 1, to = 10, by = 2)
dice_seq

dice_float <- c(1.1, 2.2, 3.3)
dice_float

# we will chat about two other data structure: list and dataframe next time

# vector operations
dice + 1
dice * 2
dice ^ 2
dice + dice
dice * dice

dice + 1:2

# functions (we have seen c() and seq() above)
sum(dice)
mean(dice)
round(mean(dice))

?round

# roll a dice twice and sum up the results
rolls <- sample(x = dice, size = 2, replace = TRUE)
result <- sum(rolls)
result

# wrap the roll dice logic into a function
roll <- function(dice, n_roll = 10) {
  roll_result <- sample(x = dice, size = n_roll, replace = TRUE)
  sum(roll_result)
}

roll(1:10, 10)
roll(dice = 1:10, n_roll = 10)

roll(dice = dice, n_roll = 5)
roll(dice = 1:10)

# write a loop to do many simulations
num_sim <- 10
results <- rep(NA, num_sim)
for (i in 1:num_sim) {
  roll_sum <- roll(dice = dice, n_roll = 2)
  results[i] <- roll_sum
}
results

# try to avoid writing loops explicitly if possible
results_new <- replicate(n = 1000, expr = roll(dice = dice, n_roll = 2))

# draw a histogram
hist(results_new)

# a related handy function sapply()
squared <- function(y) {
  y ^ 2
}

# apply squared() to every element in the vector 1:10
test1 <- sapply(X = 1:10, FUN = squared)

# sapply() applied to a dataframe
df <- data.frame(
  x = 1:3,
  y = c(3.3, 2.2, 1.1)
)
df

# what if you apply squared() to a data frame
test2 <- sapply(X = df, FUN = squared)

# how about mean() function
sapply(X = df, FUN = mean)

