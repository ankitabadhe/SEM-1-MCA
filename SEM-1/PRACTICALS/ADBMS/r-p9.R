install.packages("arules")

library(arules)

market_data<-read.csv("C:\\Users\\NARENDER KESWANI\\Downloads\\data_apriori.csv")
head(market_data)

trans<- split(market_data$Products, market_data$Customer_Id,"trasnactions")
head(trans)

rules<- apriori(trans,parameter=list(support=0.5, confidence=0.9, maxlen=3, minlen=2))
inspect(rules)
