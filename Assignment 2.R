library(robotstxt)
library(rvest)
lol="https://www.lenovo.com/us/en/glossary/pc/?orgRef=https%253A%252F%252Fwww.google.com%252F"
path=paths_allowed(lol)

r=read_html(lol)
View(r)

context=r %>%html_nodes(".main-content-left p")%>%html_text()
View(context)
head=r %>%html_nodes("h2")%>%html_text()
View(head)

text=data.frame(context)
top=data.frame(head)

View(text)
View(top)

write.dcf(text,"pc.doc")
write.dcf(top,"heading.doc")










