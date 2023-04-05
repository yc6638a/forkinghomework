library(tidyverse)
library(dplyr)
library(data.table)

diamonds

diamonds%>%
  select(carat,cut,price)%>%
  filter(cut == "Premium")%>%
  filter(price > 7000 & price < 10000)%>%
  arrange(desc(carat))%>%
  slice(1:20)
diamonds1 <- data.table(ggplot2::diamonds)
diamonds1
diamonds1[cut == "Premium" & price > 7000 & price < 10000, .(carat,cut,price)][order(-carat)][1:20]
