# set the largest y for which you want to plot P(Y = y)
max_y <- 50
y <- 0:max_y

# remember the R parameterization is different than the book, so to match the book,
# add 1 to the value for y before plotting.
# initialize plot
plot(y + 1, dgeom(y, 0.5), type="h",
     xlim=c(1, max_y + 1), ylim=c(0,0.5),
     xlab = "y", ylab = "p(Y = y)",
     main = "Y ~ Geom(p); \n Y = Trial on which first success occurs",
     col = "darkgreen")
# add points and lines for the distribution of Y if Y ~ Geom(p) for different p
points(y + 1, dgeom(y, 0.5), pch = 20, col = "darkgreen")
lines(y + 1, dgeom(y, 0.25), type = "h", col = "magenta")
points(y + 1, dgeom(y, 0.25), pch = 20, col = "magenta")
lines(y + 1, dgeom(y, 0.1), type = "h", col = "blue")
points(y + 1, dgeom(y, 0.1), pch = 20, col = "blue")
# add a legend
legend("topright", legend = c("p = 0.5", "p = 0.1", "p = 0.25"),
       col = c("darkgreen", "blue", "magenta"),
       pch = c(20,20,20), bty = "n")
