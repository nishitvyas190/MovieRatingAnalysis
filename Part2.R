library(ggplot2)
install.packages("ggplot2")



movies<- read.csv("Data2.csv")
str(movies)
summary(movies)


names<-colnames(movies)
names[8]<-"BudgetMillions"
colnames(movies)<-names
colnames(movies)


selectedGenre<-movies[((movies$Genre=="action" | movies$Genre=="adventure" |
   movies$Genre=="comedy" | movies$Genre=="animation"|
   movies$Genre=="drama")&(movies$Studio=="Fox" | movies$Studio=="WB"|
                              movies$Studio=="Buena Vista Studios"|
                              movies$Studio=="Paramount Pictures"|
                              movies$Studio=="Sony"|
                              movies$Studio=="Universal")),]
head(selectedGenre)
summary(selectedGenre)
str(selectedGenre)

g<- ggplot(data=selectedGenre, aes(x=Genre, y=GrossPercentUS))
g + geom_jitter(aes(colour=Studio, size=BudgetMillions)) +
   geom_boxplot(alpha=0.6)





theme(axis.title.x = element_text(colour="DarkGreen",size=30),
      axis.title.y = element_text(colour="Red",size = 30),
      axis.text.x = element_text(size=20),
      axis.text.y = element_text(size=20),
      
      legend.title = element_text(size = 30),
      legend.position = c(1,1),
      legend.text = element_text(size=20),
      legend.justification = c(1,1))