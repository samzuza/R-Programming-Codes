# CSIT 275 Homework 2
# Name: Samantha Zuza

# -- Question 1
head(beaver1)
unique(beaver1$activ)
median0 <- median(beaver1$temp[beaver1$activ==0])
median1 <- median(beaver1$temp[beaver1$activ==1])
median0
median1

# -- Question 2
plot(x = seq(1:114), y=beaver1$temp, type="l", xlim = c(1, 114), 
     + ylim=c(36.2, 37.8), xaxs="i", yaxs="i", xlab="Number of Observation", 
     + ylab="Temperature in Celsius", xaxt = 'n', yaxt = 'n', 
     + main = 'Body Temperature of Beaver 1')
axis(side = 1, at = c (1, seq(20, 100, 20), 114))
axis(side = 2, at = c (36.2, seq(36.2, 37.8, 1.4), 37.8))
is.outside <- beaver1$activ == 1
points(which (is.outside), beaver1$temp[is.outside],
     + pch = 17,col='blue', cex=0.8)
abline(h=c(median0, median1), col=c("black"), lty=c(1,2), lwd=c(1, 3))
legend (x = 'topleft', legend = c('inside median temp', 'outside median temp'),
     + lty = c(1,2), bty='n')