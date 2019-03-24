# Logistic Regression In R :

# importing the data set into R using file picker.

mydata <- read.csv(file.choose(),header = TRUE)
# check the data loading 
mydata
# view the data using view command
View(mydata)
# strucutre of the dataset 
str(mydata)
# converting the admit and rank (categorical data) into factor
mydata$admit <- as.factor(log_r$admit)
mydata$rank <- as.factor(log_r$rank)

# Two way table of factor variable 
xtabs(~admit + rank,data = mydata)

# partition data- train (80%) & test(20%)
set.seed(1234)
ind<-sample(2,nrow(mydata),replace=T, prob = c(0.8,0.2))
train <- mydata[ind==1,]
test <- mydata[ind==2,]

# creating the logistic regression model

mymodel<-glm(admit~gre+gpa+rank, data= train,family = 'binomial')
summary(mymodel)

# rerunning the model by dropping gre because it's not statistically significant.

mymodel<-glm(admit~gpa+rank, data= train,family = 'binomial')
summary(mymodel)

# prediction
p1<-predict(mymodel,train,type='response')
head(p1)
head(train)

# probability calculation.

y <- -2.3868 + (0.7861*3.19) +(-1.9187*1)
y

# probability of the student get admitted 

# fromula.

exp(y)/(1+exp(y))


# misclassification error - train data 

pred1<- ifelse(p1>0.5,1,0)
tab1<-table(predicted=pred1,actual=train$admit)
# confusion matrix
tab1

# misclassification error based on this model in training dataset.

1-sum(diag(tab1))/sum(tab1)
# is approximately about 32%

# misclassification error - test data.
p2 <- predict(mymodel,test,type = 'response')
pred2<- ifelse(p2>0.5,1,0)
tab2 <- table(predicted = pred2, actual=test$admit) 
# confusion matrix
tab2

# misclassification error based on this model in test dataset.

1-sum(diag(tab2)/sum(tab2))
# is approximately about 23%


# Godness of fit test 
with(mymodel,pchisq(null.deviance,df.null-df.residual,lower.tail = F ))

#getting the value (2.182709e-89)

