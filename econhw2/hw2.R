getwd()
setwd("~/Desktop/econhw2")
list.files()
data <- read.csv("college_mobility_rates.csv")
print(data$name[2013:2022])

mylist <- list(data$name)
lengths(mylist)
sorted1 <- data[order(data$par_q1),]
print(sorted1$name[1:10])
print(sorted1$name[2013:2022])
data[data$name %in% c("Cornell University", "Princeton University", "Yale University", "Quinnipiac University"), c("name","kq5_cond_parq1")]


#--
plot(data$par_q1, data$kq5_cond_parq1, xlab = "Access Rate", ylab = "Success Rate", main = "Access Rate vs Success Rate")

# The higher the access rate, the lower the success rate, implying that access rate is negatively correlated with success rate. 
# There are very few colleges who do well on both access and success rates. Most do very poorly on both metrics. 
# 

data$mr_kq5_pq1 <- data$par_q1*data$kq5_cond_parq1
summary(data$mr_kq5_pq1)
plot(data$mr_kq5_pq1)
