
movies<- read.csv("Movie-Ratings.csv")
head(movies)
colnames(movies)<- c("Movie", "Genre","CriticRating","AudienceRating","BudgetMillions","Year")
colnames(movies)
head(movies)
t<-ggplot(data=movies ,aes(x=CriticRating, y=AudienceRating, colour=Genre))
t+ geom_point() + facet_grid(Genre~.)
#--------------------------------------PIC1
a<- ggplot(data=movies, aes(x=AudienceRating))
a + geom_histogram(binwidth = 10, fill="White", colour="Blue")

#--------------------------------------PIC2
b<- ggplot(data=movies, aes(x=CriticRating))
b + geom_histogram(binwidth = 10, fill="White", colour="Blue")


#--------------------------------------PIC3
c<- ggplot(data=movies, aes(x=Genre, y=AudienceRating,colour=Genre))
c +geom_jitter()+ geom_boxplot(size=1.2,alpha=0.5) 

#--------------------------------------PIC4
d<- ggplot(data=movies, aes(x=CriticRating,y=AudienceRating,
                            colour=Genre))
d+ geom_point(size=3) + geom_smooth()+
  facet_grid(Genre~Year)+
  coord_cartesian(ylim = c(0,100))

#--------------------------------------PIC5
e<- ggplot(data=movies,aes(x=BudgetMillions))
f <- e + geom_histogram(binwidth = 10,
                        aes(fill=Genre),
                        colour="Black")
f

f + xlab("Money Axis")+
  ylab("Number of Movies")+
  ggtitle("Movie Budget Distribution")+
  theme(axis.title.x = element_text(colour="DarkGreen",size=30),
          axis.title.y = element_text(colour="Red",size = 30),
          axis.text.x = element_text(size=20),
          axis.text.y = element_text(size=20),
          
          legend.title = element_text(size = 30),
        legend.position = c(1,1),
        legend.text = element_text(size=20),
        legend.justification = c(1,1))

