#LINEAR REGRESSION MODEL USING THE AIRQUALITY DATASET.

# TO FIND THE INBUILT R DATASET.
data()   
# CALLING THE DATASET INTO ENVIRONMENT. 
data("airquality")
# CHECKING THE CALLED DATASET.
data
# DISPLAYING THE DATASET.
View(airquality)
# TO  CHECK THE NAMES OF THE VARIABLE PRESENT IN THE DATASET.
names(airquality) 
# PLOTTING THE RELATIONSHIP BETWEEN VARIABLES OZONE AND SOLAR RADIATION.
plot(Ozone~Solar.R,data = airquality,col ='RED',
     main='RELATION BETWEEN OZONE AND SOLAR RADIATION') 
# THERE ARE NA's(MISSING VALUES) PRESENT IN THE DATASET.
airquality$Ozone
# REMOVING THE NA's FROM THE DATASET
mean(airquality$Ozone,na.rm =T)
?rm
# mean.ozone has set with na's removed.
mean.ozone=mean(airquality$Ozone,na.rm =T)
# drawing the horizontal line through the ozone 
abline(h=mean.ozone)
# use lm(linear model) command to fit a regression line through data.
model1<-lm(Ozone~Solar.R,data=airquality)
model1
abline(model1,col='blue')
plot(model1)
termplot(model1)
summary(model1)

