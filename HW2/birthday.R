# Recall that if A = event that at least two people share 
# a birthday in a room of m people, and 
# A^c = event that all birthdays are distinct (complement of A)
# P(A) = 1 - P(A^c) = 1 - (365!/(365-m)!)*(1/365^m)
# SELF-TEST: Work through the derivation of P(A)! 
# it's an application of the fundamental theorem of counting 

# in R we can write a function to do the above computation 
# note we do it on the log-scale and then back-transform (or exponentiate)
# to get back to the probability scale! 

bday_fun <- function(m){
  # this function takes on a value m and computes the probability
  # of at least 2 of the m students sharing a birthday
  # compute the probability of complement of A on log scale
  l_prob_a_c <- lfactorial(365) - lfactorial(365-m) - m*log(365)
  # find probability of A
  prob_a <- 1- exp(l_prob_a_c)
  # return probability of A
  return(prob_a)
}

# to use the function....
# highlight all of the code in lines 12 - 21 and run it. 
# Now your function is loaded and you can use it.  
# recreate results from notes for m = 20 
prob_m20 <- bday_fun(m = 20)
prob_m20

# to automatically generate values for more than one m 
# you can use the apply function. 
# make a vector representing rooms of size 2 through 10
m_vec <- 2:10
m_vec

# use the bday_fun to find the probs of shared bdays for 
# each value in m_vec
probs <- bday_fun(m_vec)
probs

# make a plot 
plot(x = m_vec, y = probs, xlab = "# of people in the room", 
     ylab = "Probability of at least one shared bday (P(A))")
