setwd("C:/Users/91958/Desktop")
 linear_model<-read.csv("LM.csv",header = TRUE)
 linear_model
 View(linear_model)
 Hours<-linear_model$Hours
 Scores<-linear_model$Scores
 plot(Hours,Scores)
 plot(Hours,Scores,pch=16,cex=1,col='blue',main='Hours v/s Scores',xlab = 'Hours',ylab = 'Scores')
 LM<-lm(Scores~Hours)
 LM
 summary(LM)
 abline(LM)
 coef(LM)
 #What will be the predicted score if a student studies for 9.25 hours a day?
score<-data.frame(Hours=9.25)
 predict(LM,score)
 
 
