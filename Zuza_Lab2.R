# CSIT 275 Lab 2
# Name: Samantha Zuza

# Question 1
meanFL <- mean(crabs)
meanM <- mean(crabs$FL[crabs$sex == "M"])
meanF <- mean(crabs$FL[crabs$sex == "F"])
# or
tapply(crabs$FL, crabs$sp, mean)
tapply(crabs$FL, crabs$sex, mean)

# Question 2
crabs$sp:crabs$sex
# This creates a vector that will show the species of the animal,
# blue and orange for the first column, 
# and the sex of the animal in the second column.
# The levels that are shown are B:F B:M O:F O:M
spsex <- crabs$sp:crabs$sex

# Question 3
tapply(crabs$BD, spsex, mean)
meanBD <- tapply(crabs$BD, spsex, mean)
meanBD
# or
tapply(crabs$BD, crabs$sp:crabs$sex, mean)

# Question 4
table(spsex)
crab.counts <- table(spsex)
crab.counts

# Question 5
subset(crabs, crabs$FL & crabs$BD < 14)

# Question 6
crabs[order(crabs$FL),]
sorted <- crabs[order(crabs$FL),]
sorted[(nrow(sorted)-9):nrow(sorted),]
sorted[1:10, ]

# Question 7
plot(x = ncol(crabs), y = nrow(crabs), xlab = "Crab Descriptions", 
     + ylab = "Numerial Values", type = 'h', xlim = c(1, 23.1), 
     + ylim=c(0, 200), xaxs="i", yaxs="i", main = 'Crabs')
legend (x = 'topleft', legend = c('Crab line'),
        + lty = c(1), bty='n')