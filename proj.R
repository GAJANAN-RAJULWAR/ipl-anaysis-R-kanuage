getwd()
setwd('C:/shubham/Data Ibm Class/R/project')
getwd()

df<-read.csv('ipl.csv')
View(df)

library(ggplot2)

# 1 number of matches wob by each team in ipl 2022
figure<-ggplot(df,aes(x=match_winner))+
  geom_bar(color='red')
labs(title = 'Number of matches won in ipl 2022')+
  theme_classic()

print(figure)


#2 best bowling 2022 ipl 
# kuldeep yadav and zaher khan
abc<-ggplot(df,aes(x=best_bowling))+
  geom_bar(color='yellow')+
  theme_light()
print(abc)


# 3 player_of_the_match shivam dube and virat koli
ccc<-ggplot(df,aes(x=player_of_the_match))+
  geom_boxplot(color='orange')
theme_dark()
print(ccc)

# 4 Assuming that 'top_scorer' and 'highscore' 
# Ms dhoni #surakumar yadav

aa <- ggplot(df, aes(x = top_scorer, y = highscore)) +
  geom_bar(stat = "identity",color='green')  # Use stat = "identity" to plot the values directly
theme_minimal()

print(aa)

library(ggplot2)

# 5 match date and toss winer team
# rajstan royals date 10 april 2022
bb <- ggplot(df, aes(df)) +
  geom_violin(stat = "identity", fill = "blue") +  # Use stat = "identity" to plot the values directly
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels if needed

# Print the plot
print(bb)

install.packages(Rtools)