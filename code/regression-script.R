# Read data
adver <- read.csv('data/Advertising.csv', header = T)

# Regression
regression <- lm(adver$Sales~adver$TV)
regression
regression_sum <- summary(regression)
regression_sum

save(regression, regression_sum, file = 'data/regression.RData')

# Scatterplot
png('images/scatterplot-tv-sales.png')
plot(adver$TV, adver$Sales, 
     main='Linear regression of TV ads on Sales with fitted regression line',
     xlab='TV', 
     ylab='Sales',
     pch=20,col='#000000' )
abline(regression, col="#bd0300",lwd=2)
dev.off()

pdf("images/scatterplot-tv-sales.pdf")
plot(adver$TV, adver$Sales, 
     main='Linear regression of TV ads on Sales with fitted regression line',
     xlab='TV', 
     ylab='Sales',
     pch=20, col='#000000')
abline(regression, col="#bd0300",lwd=2)
dev.off()   

