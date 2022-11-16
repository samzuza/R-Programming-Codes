# -- CSIT 275 Homework 1
# Name: Samantha Zuza

# -- Question 1
sum(100.1, 24.6, 12.01)

# -- Question 2
x <- 20
y <- 30
z <- prod(x, y)

# -- Question 3
rainfall <- c(0.1, 0.6, 33.8, NA, 9.6, 4.3, 33.7, 0.3, 0.0, 0.1)

# -- Question 4
rain <- is.na(rainfall)

# -- Question 5
question5 <- matrix(11:20, nrow=5, ncol=2)

# -- Question 6
Wins <- c(53, 31, 20, 65)
Losses <- c(29, 51, 62, 17)
Teams <- c("Boston Celtics", "New York Knicks", "Brooklyn Nets", "Huston Rockets")
Games <- data.frame(Wins, Losses, row.names = Teams)

# -- Question 7
max(Games$Wins)
max(Games$Losses)