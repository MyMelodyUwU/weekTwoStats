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

dietData = read.table("diet.dat", header=TRUE)

attach(dietData)
str(dietData)
head(dietData)
summary(dietData$diet)
t.test(gain ~ diet, var.equal = TRUE, data = dietData)
#alternative way
# t.test(dietData$gain ~ dietData$diet, var.equal = TRUE)


#sd(banana$val)

diet1 = gain[diet == "Diet1"]
diet2 = gain[diet == "Diet2"]
qqnorm(diet1, main = "Normal Q-Q plot for Diet 1")
qqnorm(diet2, main = "Normal Q-Q plot for Diet 2")









