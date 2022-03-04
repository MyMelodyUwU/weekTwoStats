library("tidyverse")
library("devtools")
library("glue")
library("dplyr")
library("stringr")
library("ggplot2")
library("knitr")
library("ggrepel")
library("patchwork")
library("janitor")
library("usethis")
library("roxygen2")
library("testthat")

# Task 2

q1 <- 2^10
q2 <- round(log(10, base = 2), digits = 2)
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
tempF <- (temp_C * 9/5) + 32

tempF

cor(temp_C, tempF)

# Task 5

# x <- runif(10, 1, 10)
x <- rnorm(10)
x
y <- sum(x^2)

z <- seq(1, 19, 2)

abc <- sum(z * x)

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
nineFive <- t.test(meltpoint ~ burner, data = melt)$conf.int
# Ask how to find confidence interval
nineFive

nineNine <- t.test(meltpoint ~ burner, data = melt, conf.level = 0.99)$conf.int
# Ask how to find confidence interval
nineNine

# --------------------------------------------------------------------------

# Values will chance since the sample has changed.



