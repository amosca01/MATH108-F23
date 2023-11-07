
library(tidyverse)
ds <- read_csv("SOCR-HeightWeight.csv")

# All data

#histogram
plt <- ggplot(ds, aes(x = `Height(Inches)`)) + 
  geom_histogram() +
  ylim(0, 150) + 
  labs(title = "All Data") + 
  theme_light(base_size = 16)

# mean and sd
print("All Data")
print(plt)
print(paste0("Mean: ", mean(ds$`Height(Inches)`)))
print(paste0("SD: ", sd(ds$`Height(Inches)`)))

# Samples 
for (i in 0:10) {
  
  # sample
  random <- sample_n(ds, 1000, replace = FALSE)
  
  #histogram
  plt <- ggplot(random, aes(x = `Height(Inches)`)) + 
            geom_histogram() +
            ylim(0, 150) + 
            labs(title = paste0("Sample ", i)) + 
            theme_light(base_size = 16)
  
  # mean and sd
  print(paste0("Sample ", i))
  print(plt)
  print(paste0("Mean: ", mean(random$`Height(Inches)`)))
  print(paste0("SD: ", sd(random$`Height(Inches)`)))
  
}

