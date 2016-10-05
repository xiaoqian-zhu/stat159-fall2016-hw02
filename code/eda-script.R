# Read data
adver <- read.csv('data/Advertising.csv', header = T)

# Making summary tables
sink("data/eda-output.txt")

# Summary of TV
cat('Summary of TV\n')
summary(as.numeric(adver$TV))

# Summary of Sales
cat('Summary of Sales\n')
summary(as.numeric(adver$Sales))
sink()

# Histogram of TV
png('images/histogram-tv.png')
hist(as.numeric(adver$TV),
     xlab='Advertising Budget (in 1000 dollars)', ylab='Frequency',
     main='Histogram of Frequency of TV Advertising Budget')
dev.off()

pdf('images/histogram-tv.pdf')
hist(as.numeric(adver$TV),
     main='Histogram of Frequency of TV Advertising Budget',
     xlab='Advertising Budget (in 1000 dollars)', ylab='Frequency')
dev.off()

# Histogram of Sales
png('images/histogram-sales.png')
hist(as.numeric(adver$TV), 
     main='Histogram of Frequency of Sales',
     xlab='Sales (in 1000 dollars)', ylab='Frequency')
dev.off()

pdf('images/histogram-sales.pdf')
hist(as.numeric(adver$TV), 
     main='Histogram of Frequency of Sales',
     xlab='Sales (in 1000 dollars)', ylab='Frequency')
dev.off()

