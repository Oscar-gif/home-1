library(tidyverse)
library(dslabs)
data(murders)

murders <- murders %>%
  mutate(murder_rate = total/population * 100000)






