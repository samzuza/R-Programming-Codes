# -- CSIT 275 Lab 1
# Name: Samantha Zuza

# -- Question 1.1
x <- seq(from-1, to=10, length.out=50)

# -- Question 1.2
y <- sqrt(x)

# -- Question 1.3
sum(y > 3)
# OR
length(y[y > 3])

# -- Question 2.1
sparrow <- read.table(file="dataset/Sparrows.csv", sep=',', header = T)
# this is where I saved my Sparrows file

# -- Question 2.2
min(sparrow$Wing, na.rm = T)
max(sparrow$Wing, na.rm = T)

# -- Question 2.3
sum(sparrow$Species == "SSTS")

# -- Question 2.4
SESP <- sparrow[sparrow$Species == "SESP", ]

# -- Question 2.5
head(SESP, 10)

# -- Question 2.6
SESP.data <- matrix(c(SESP$Wing, SESP$Tarsus, SESP$Head, SESP$Bill), ncol = 4)

# Question 2.7
head(SESP.data, 5)