> setwd("C:/Users/91958/Desktop")
>  linear_model<-read.csv("LM.csv",header = TRUE)
>  linear_model
Hours Scores
1    2.5     21
2    5.1     47
3    3.2     27
4    8.5     75
5    3.5     30
6    1.5     20
7    9.2     88
8    5.5     60
9    8.3     81
10   2.7     25
11   7.7     85
12   5.9     62
13   4.5     41
14   3.3     42
15   1.1     17
16   8.9     95
17   2.5     30
18   1.9     24
19   6.1     67
20   7.4     69
21   2.7     30
22   4.8     54
23   3.8     35
24   6.9     76
25   7.8     86
>  View(linear_model)
>  Hours<-linear_model$Hours
>  Scores<-linear_model$Scores
>  plot(Hours,Scores)

>  plot(Hours,Scores,pch=16,cex=1,col='blue',main='Hours v/s Scores',xlab = 'Hours',ylab = 'Scores')

>  LM<-lm(Scores~Hours)
>  LM

Call:
  lm(formula = Scores ~ Hours)

Coefficients:
  (Intercept)        Hours  
2.484        9.776  

>  summary(LM)

Call:
  lm(formula = Scores ~ Hours)

Residuals:
  Min      1Q  Median      3Q     Max 
-10.578  -5.340   1.839   4.593   7.265 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)   2.4837     2.5317   0.981    0.337    
Hours         9.7758     0.4529  21.583   <2e-16 ***
  ---
  Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 5.603 on 23 degrees of freedom
Multiple R-squared:  0.9529,	Adjusted R-squared:  0.9509 
F-statistic: 465.8 on 1 and 23 DF,  p-value: < 2.2e-16

>  abline(LM)


>  coef(LM)
(Intercept)       Hours 
2.483673    9.775803 
>  #What will be the predicted score if a student studies for 9.25 hours a day?
  > score<-data.frame(Hours=9.25)
>  predict(LM,score)
1 
92.90985
