# the following function generates the RV W from last HW
w_fun <- function() {
  # generate a sequence of 100 independent Bernoulli trials
  samp <- rbinom(n = 100, size = 1, prob = 0.1)
  # find the location of the first success
  w <- which(samp == 1)[1]
  return(w)
}
# 1000 realizations of W
w_vec <- replicate(n = 1000, expr = w_fun())
tab_w <- tabulate(w_vec, max(w_vec))
# create a frequency table for G = g using tab_g
freq_w <- rbind(1:max(w_vec), tab_w)



freq_w
# explore and understand the differences between
# rgeom, qgeom, dgeom
help(rgeom)
# generate random realizations from a geometric RV
rgeom(n = 10, prob = 0.1)
# generate probabilities for a given x
dgeom(x = 17, prob = 0.1)
# cdf for a given x = q
pgeom(q = 17, prob = 0.1)
# value at which the cdf has probability 0.84
qgeom(p = 0.84, prob = 0.1)
# compare simulated values to theoretical distribution
# simulate from a geom(0.1) distribution. Take RS of
# size 100
x_sim <- rgeom(100, 0.1)
table(x_sim)
# make relative frequencies (empirical probs)
x_rel_freq <- table(x_sim)/100
# make a plot of the pmf of X ~ geom(0.1) for
# x = 0,1,2,..,25
x <- 0:25
plot(x, dgeom(x = x, prob = 0.1),
     type = "h",
     col = "red",
     main = "Geom(p = 0.1)",
     xlab = "x",
     ylab = "P(X = x)")
# add points at probability masses in S_X
points(x, dgeom(x = x, prob = 0.1),
       col = "red",
       pch = 16,
       cex = 1.5)
# add relative frequencies from your simulation
# lines
points(x = as.numeric(names(x_rel_freq)),
       y = x_rel_freq,
       col = "blue",
       type = "h",
       lty = 2)

# points
points(x = as.numeric(names(x_rel_freq)),
       y = x_rel_freq,
       col = "blue",
       lty = 2,
       pch = 16)
# add legend
legend("topright",
       legend=c("True Geom Probs", "Simulated (nsim=100)"),
       col = c(2,4), pch = 16, bty = "n")
# play around with this as you change the number of simulations
# that is, explore different values of nsim.
