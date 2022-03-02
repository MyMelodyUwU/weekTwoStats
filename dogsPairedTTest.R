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

dogData = read.table("dogs.dat", header=TRUE)

# attach(dietData)
# str(dogData)
head(dogData)
summary(dogData$diet)
# paired t test
t.test(dogData$seven.months, dogData$Two.months, paired = TRUE)
# this is a working test



# wrong test, this ignores subjects in 2 samples

# t.test(dogs$seven.months, dogs$Two.months,var.equal = TRUE)

# not working test


#t.test(gain ~ diet, var.equal = TRUE, data = dietData)
#alternative way
# t.test(dietData$gain ~ dietData$diet, var.equal = TRUE)

