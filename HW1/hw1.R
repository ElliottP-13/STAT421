#
samples <- rnorm(24, mean = 21, sd = 3)
samples <- c(samples, 52.2)

hist(samples, col = "red")

mean <- mean(samples)
stdev <- sd(samples)
pintervals <- c(mean + stdev * 1:3)
mintervals <- c(mean - stdev * 1:3)

i1 <- sum(samples > mintervals[1] & samples < pintervals[1])
i2 <- sum(samples > mintervals[2] & samples < pintervals[2])
i3 <- sum(samples > mintervals[3] & samples < pintervals[3])

r <- range(samples)
range <- r[2] - r[1]
