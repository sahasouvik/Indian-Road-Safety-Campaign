View(data)
dim(data)
train_index=sample(1:dim(data)[1],size =round(dim(data)[1]*0.9))
training_set=data[train_index,]
test_set=data[-train_index,]
model=glm(data$Z~data$X+data$Y,family=binomial(link=logit),data = training_set)
y_hat=predict(model,type="response",data=training_set)
y_hat
p=ifelse(y_hat<0.5,yes=0,no=1)
p
p[p==1]
data<-cbind(data,p)
View(data)
length(data$Z==data$p)
