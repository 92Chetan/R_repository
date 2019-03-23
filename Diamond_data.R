Diamond <- read.csv(file.choose(),header = TRUE)
Diamond
#structure(Diamond)
View(Diamond)
summary(Diamond)
min_price<-min(Diamond$PRICE)
min_price
max_price<-max(Diamond$PRICE)
max_price
min_weight<-min(Diamond$WEIGHT)
min_weight
max_weight<-max(Diamond$WEIGHT)
max_weight
head(Diamond)
tail(Diamond)
#correlation between weight and price
cor.test(Diamond$WEIGHT,Diamond$PRICE)
#By this correlation analysis with a correlation coefficient of
#(0.944) we can say that there is strong
#linear relationship between weight and price with 95% of confidence
#interval between(0.93 to 0.95).
plot(Diamond$WEIGHT,Diamond$PRICE,
     main = 'linear Relationship between Price and Weight',
     col='red')
#plotting the relationship between weight & price using scatter plot
points(Diamond$WEIGHT[Diamond$CLARITY=='IF'],
     Diamond$PRICE[Diamond$CLARITY=='IF'],
     main = 'linear Relationship between Price and Weight',
     col='black')
#plotting the relationship between weight and price where 
#where clarity of the diamond is 'IF' shows in black color
points(Diamond$WEIGHT[Diamond$COLOR=='D'],
       Diamond$PRICE[Diamond$COLOR=='D'],
       main = 'linear Relationship between Price and Weight',
       col='blue')
#plotting the relationship between weight and price where 
#where color of the diamond is 'D' shows in blue color
points(Diamond$WEIGHT[Diamond$CLARITY=='VVS1'],
       Diamond$PRICE[Diamond$CLARITY=='VVS1'],
       main = 'linear Relationship between Price and Weight',
       col='green')
#plotting the relationship between weight and price where 
#where clarity of the diamond is 'VVS1' shows in green color


     