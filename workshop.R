# Task 2

q1 <- 2^10
q2 <- log(10, base = 2)
q3a <- cospi(2)
q3b <- asin(0.5)
q3c <- qt(0.05, 10) # Double check

# Task 3

#X <- 2 invalid
X1 <- 3
X_ <- 4
#_X <- 5 invalid
.X <- 6
X. <- 7

#Task 4

temp_C <- c(23.5,23.4,22.1,19.5)
sd(temp_C)
i <- 1
tempF <-  c(1,2,3,4)
for(i in temp_C) {
  tempF <- temp_C * 33.8
  print(i)
}
tempF

# Task 5

independantNo <- runif(10, 1, 10)



# --------------------------------------------------------------------------
melt = read.table("melt.dat", header = TRUE)
head(melt)
head(melt$meltpoint)

stem(melt$meltpoint)
hist(melt$meltpoint, main = "melting points")
boxplot(melt$meltpoint, horizontal = TRUE,
        main = "melting points")
summary(melt$meltpoint)
sd(melt$meltpoint)
mean(melt$meltpoint)

# --------------------------------------------------------------------------
t.test(meltpoint ~ burner, data = melt)

pValue <- t.test(meltpoint ~ burner, data = melt)$p.value

if(pValue < 0.05) {
  print("Reject")
} else {
  print("Do Not Reject")
}

# --------------------------------------------------------------------------
CI <- t.test(meltpoint ~ burner, data = melt)$conf.int
# Ask how to find confidence interval
CI

# --------------------------------------------------------------------------

# Values will chance since the sample has changed.



