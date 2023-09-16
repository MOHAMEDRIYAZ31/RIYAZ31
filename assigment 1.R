library(rvest)
library(dplyr)
library(robotstxt)
library(stringr)

#scraping website
link<-"https://www.flipkart.com/home-kitchen/home-appliances/air-conditioners/split~type/pr?sid=j9e,abm,c54&otracker=nmenu_sub_TVs%20%26%20Appliances_0_Split%20ACs"

#allowability
path = paths_allowed(link)

#HTML element from website
web<-read_html(link)

Name<-web%>%html_nodes("._4rR01T")%>%html_text()
View(Name)

Mrp<-web%>%html_nodes("._27UcVY")%>%html_text()
View(Mrp)

Price<-web%>%html_nodes("._1_WHN1")%>%html_text()
View(Price)

Powerusage<-web%>%html_nodes(".rgWa7D:nth-child(1)")%>%html_text()
View(Powerusage)

Rating<-web%>%html_nodes(".gUuXy-")%>%html_text()
View(Rating)

Ac.one<-data.frame(Name,Mrp,Price,Powerusage,Rating)

View(Ac.one)

write.csv(Ac.one,"AcPrice.csv")