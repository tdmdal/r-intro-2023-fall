# set parameters
num_face <- 6
num_roll <- 2
num_simulation <- 1000
weight <- c(1/10, 1/10, 1/10, 1/10, 1/10, 5/10)

# create a dice
dice <- 1:num_face

# roll function
roll <- function(dice, n_roll, wght) {
  roll_result <- sample(x = dice, size = n_roll, replace = TRUE, prob = wght)
  sum(roll_result)
}

# simulations
sim <- replicate(n = num_simulation, expr = roll(dice = dice, n_roll = num_roll, wght = weight))

# plot histogram
hist(sim)


