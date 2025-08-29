# setting the directory
setwd("C:\\Users\\TUF\\Desktop\\Lab 05\\IT24103552")
getwd()

# 1
delivery_data <- read.table("Exercise - Lab 05.txt", header = TRUE)
Delivery_Times <- delivery_data
# Check the data
head(Delivery_Times)

# 2
hist(Delivery_Times$Delivery_Time_.minutes.,breaks = seq(20, 70, length.out = 10),right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Frequency",
     col = "skyblue",
     border = "black"
)


# 3: Comment on the shape of the distribution
# Answer : The histogram shows a roughly symmetric distribution with most delivery times between 35 and 55 minutes.


# 4
freq_table <- table(cut(Delivery_Times$Delivery_Time_.minutes., 
                        breaks = seq(20, 70, by = 5), right = FALSE))

cum_freq <- cumsum(freq_table)

midpoints <- seq(20, 65, by = 5) + 2.5

plot(midpoints, cum_freq, type = "o", col = "red", lwd = 2,
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     main = "Cumulative Frequency Polygon (Ogive)")
grid()
