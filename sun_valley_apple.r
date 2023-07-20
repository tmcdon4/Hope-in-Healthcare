#1
library(ggplot2)

#2
set.seed(3000)

#3
data <- data.frame(
  Patient_ID = c(1001:2000),
  Hope = sample(c('High', 'Low', 'Medium'), size = 2000, replace = TRUE)
)

#4
ggplot(data, aes(Patient_ID, Hope)) + 
  geom_point(position = position_jitter(width = 0.2))

#5
ggsave('HopeinHealthcare.pdf', device = 'pdf')

#6
library(rpart)

#7
model <- rpart(Hope ~ ., data = data)

#8
plot(model)

#9
text(model)

#10
rpart.plot(model, type = 4, extra = 104)

#11
pred <- predict(model, data, type = 'prob')

#12
head(pred)

#13
library(caret)

#14
confMatrix <- confusionMatrix(data$Hope, as.factor(ifelse(pred[,1] > pred[,2], 'Low', 'High')) )

#15
confMatrix

#16
ggplot(data, aes(x =factor(Hope), y = factor(ifelse(pred[,1] > pred[,2], 'Low', 'High')))) + 
  geom_point(position = position_jitter(width = 0.2))

#17
ggsave('HopeinHealthcare2.pdf', device = 'pdf')

#18
library(rpart.plot)

#19
rp.control <- rpart.control(xval = 10)

#20
model3 <- rpart(Hope ~ ., data = data, control = rp.control)

#21
plot(model3)

#22
text(model3)

#23
rpart.plot(model3, type = 4, extra = 104)

#24
pred2 <- predict(model3, data, type = 'prob')

#25
head(pred2)

#26
library(caret)

#27
confMatrix2 <- confusionMatrix(data$Hope, as.factor(ifelse(pred2[,1] > pred2[,2], 'Low', 'High')) )

#28
confMatrix2

#29
ggplot(data, aes(x =factor(Hope), y = factor(ifelse(pred2[,1] > pred2[,2], 'Low', 'High')))) + 
  geom_point(position = position_jitter(width = 0.2))

#30
ggsave('HopeinHealthcare3.pdf', device = 'pdf')

#31
library(ranger)

#32
model4 <- ranger(Hope ~ ., data = data)

#33
print(model4)

#34
pred3 <- predict(model4, data)

#35
head(pred3)

#36
library(caret)

#37
confMatrix3 <- confusionMatrix(data$Hope, as.factor(ifelse(pred3[,1] > pred3[,2], 'Low', 'High')) )

#38
confMatrix3

#39
ggplot(data, aes(x =factor(Hope), y = factor(ifelse(pred3[,1] > pred3[,2], 'Low', 'High')))) + 
  geom_point(position = position_jitter(width = 0.2))

#40
ggsave('HopeinHealthcare4.pdf', device = 'pdf')

#41
library(randomForest)

#42
model5 <- randomForest(Hope ~ ., data = data)

#43
print(model5)

#44
pred4 <- predict(model5, data)
  
#45
head(pred4)

#46
library(caret)

#47
confMatrix4 <- confusionMatrix(data$Hope, as.factor(ifelse(pred4[,1] > pred4[,2], 'Low', 'High')) )

#48
confMatrix4

#49
ggplot(data, aes(x =factor(Hope), y = factor(ifelse(pred4[,1] > pred4[,2], 'Low', 'High')))) + 
  geom_point(position = position_jitter(width = 0.2))

#50
ggsave('HopeinHealthcare5.pdf', device = 'pdf')

#51
library(xgboost)

#52
model6 <- xgboost(Hope ~ ., data = data)

#53
print(model6)

#54
pred5 <- predict(model6, data)
  
#55
head(pred5)

#56
library(caret)

#57
confMatrix5 <- confusionMatrix(data$Hope, as.factor(ifelse(pred5[,1] > pred5[,2], 'Low', 'High')) )

#58
confMatrix5

#59
ggplot(data, aes(x =factor(Hope), y = factor(ifelse(pred5[,1] > pred5[,2], 'Low', 'High')))) + 
  geom_point(position = position_jitter(width = 0.2))

#60
ggsave('HopeinHealthcare6.pdf', device = 'pdf')

#61
library(MLmetrics)

#62
acc <- accuracy(data$Hope, ifelse(pred[,1] > pred[,2], 'Low', 'High'))

#63
acc

#64
acc2 <- accuracy(data$Hope, ifelse(pred2[,1] > pred2[,2], 'Low', 'High'))

#65
acc2

#66
acc3 <- accuracy(data$Hope, ifelse(pred3[,1] > pred3[,2], 'Low', 'High'))

#67
acc3

#68
acc4 <- accuracy(data$Hope, ifelse(pred4[,1] > pred4[,2], 'Low', 'High'))

#69
acc4

#70
acc5 <- accuracy(data$Hope, ifelse(pred5[,1] > pred5[,2], 'Low', 'High'))

#71
acc5

#72
model7 <- glm(Hope ~ ., family = binomial(link = 'logit'), data = data)

#73
summary(model7)

#74
pred7 <- predict(model7, data, type = 'response')

#75
head(pred7)

#76
library(caret)

#77
confMatrix6 <- confusionMatrix(data$Hope, as.factor(ifelse(pred7 > 0.5, 'Low', 'High')) )

#78
confMatrix6

#79
ggplot(data, aes(x =factor(Hope), y = factor(ifelse(pred7 > 0.5, 'Low', 'High')))) + 
  geom_point(position = position_jitter(width = 0.2))

#80
ggsave('HopeinHealthcare7.pdf', device = 'pdf')

#81
acc6 <- accuracy(data$Hope, ifelse(pred7 > 0.5, 'Low', 'High'))

#82
acc6

#83
library(boot)

#84
model_boot <- boot(data, function(x, index) {
  pred_boot <- predict(model7, data[index,])
  c(cor(pred_boot, x$Hope))
}, 1000)

#85
model_boot

#86
library(caret)

#87
model8 <- train(Hope ~ ., data = data, method = 'glmnet')

#88
print(model8)

#89
pred8 <- predict(model8, data)

#90
head(pred8)

#91
library(caret)

#92
confMatrix7 <- confusionMatrix(data$Hope, as.factor(ifelse(pred8 > 0.5, 'Low', 'High')) )

#93
confMatrix7

#94
ggplot(data, aes(x =factor(Hope), y = factor(ifelse(pred8 > 0.5, 'Low', 'High')))) + 
  geom_point(position = position_jitter(width = 0.2))

#95
ggsave('HopeinHealthcare8.pdf', device = 'pdf')

#96
acc7 <- accuracy(data$Hope, ifelse(pred8 > 0.5, 'Low', 'High'))

#97
acc7

#98
library(mlr)

#99
model9 <- makeLearner(cl = "classif.rpart", predict.type = "prob")

#100
model9 <- setHyperPars(model9, cp = 0.001)

#101
task <- makeClassifTask(data = data, target = "Hope")

#102
model9 <- train(model9, task)

#103
pred9 <- predict(model9, task)

#104
head(pred9$data$prob.High)

#105
library(caret)

#106
confMatrix8 <- confusionMatrix(data$Hope, as.factor(ifelse(pred9$data$prob.High > 0.5, 'Low', 'High')) )

#107
confMatrix8

#108
ggplot(data, aes(x =factor(Hope), y = factor(ifelse(pred9$data$prob.High > 0.5, 'Low', 'High')))) + 
  geom_point(position = position_jitter(width = 0.2))

#109
ggsave('HopeinHealthcare9.pdf', device = 'pdf')

#110
acc8 <- accuracy(data$Hope, ifelse(pred9$data$prob.High > 0.5, 'Low', 'High'))

#111
acc8