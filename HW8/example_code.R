# be sure to look at how the gamma and beta dist'ns are parameterized
help(rgamma)
help(rbeta)
### Example code for EP simulation problem
# using ifelse()
a <- rnorm(10)
a
# logical test
ind_lt0 <- ifelse(a < 0, 1, 0)
cbind(a, ind_lt0)
# AND
ind_within1 <- ifelse( a > -1 & a < 1, 1, 0)
cbind(a, ind_within1)
# OR
ind_or <- ifelse(a > -1 | a < 1, 1, 0)
cbind(a, ind_or) #not very useful
# OR
ind_outside1 <- ifelse( a < -1 | a >= 1, 1, 0)
cbind(a, ind_outside1)
#OR
ind_outside1 <- ifelse( a < -1 | a > 1, "Out", "In")
cbind(a, ind_outside1)
data.frame(a, ind_outside1)
