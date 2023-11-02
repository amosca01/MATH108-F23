# Load library
library(tidyverse)

# read data 
ds <- read_csv("avocado.csv")

# descriptive stats 
mean(ds$AveragePrice)
sd(ds$AveragePrice)
median(ds$AveragePrice)

# histogram 
ggplot(ds, aes(x = AveragePrice)) + 
  geom_histogram()

# boxplot
ggplot(ds, aes(x = AveragePrice)) + 
  geom_boxplot()

# one-sample mean 
t.test(x = ds$AveragePrice, mu = 0, conf.level = 0.95)

# two-sample mean 
t.test(x = ds$`Large Bags`, y = ds$`Small Bags`, conf.level = 0.95)

