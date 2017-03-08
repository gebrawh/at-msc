# Arjen Gebraad
# 28.02.2017
# Data wrangling for final assignment using data on adipose stem cells

at_msc.data <- read.csv("at_msc_org_data.csv", header = TRUE, sep = ";")

at_msc.data["BMI"] <- at_msc.data$weight / at_msc.data$height^2

rownames(at_msc.data) <- at_msc.data$donor

at_msc.data$donor <-NULL

write.table(at_msc.data, "at_msc_data.csv")

