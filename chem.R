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

chem.dat = read.table("chem.dat", header=TRUE)

head(chem.dat)
#give first 10

t.test(concen ~ method, data = chem.dat)

# as the p value is < 0.05 we can reject null hypothesis


boxplot(concen ~ method, data = chem.dat, horizontal = TRUE)





