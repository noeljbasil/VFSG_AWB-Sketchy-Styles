# library
library(igraph)
setwd("D:/#Viz for social good/Academics without Borders/OutImg")
# create data:
links=data.frame(
  source=c("Visiting Instructor Model","Visiting Instructor Model","First Year","Consecutive Year(s)","Consecutive Year(s)","Futher Faculty Visits"),
  target=c("First Year","Consecutive Year(s)","Class1","Futher Faculty Visits","No Futher Faculty Visits","Class2")
)

links2=data.frame(
  source=c("TtT model","TtT model","First Year","First Year","First Year","First Year","First Year","First Year","Consecutive Year(s)","Consecutive Year(s)","No Futher Faculty Visits","No Futher Faculty Visits","No Futher Faculty Visits","No Futher Faculty Visits","No Futher Faculty Visits","Futher Faculty Visits","Futher Faculty Visits","Futher Faculty Visits","Futher Faculty Visits","Futher Faculty Visits","Futher Faculty Visits"),
  target=c("First Year","Consecutive Year(s)","class1","class2","class3","class4","class5","Tclass1","Futher Faculty Visits","No Futher Faculty Visits","class6","class7","class8","class9","class10","class11","class12","class13","class14","class15","Tclass2")
)


# Turn it into igraph object
network <- graph_from_data_frame(d=links, directed=T) 
network2 <- graph_from_data_frame(d=links2, directed=T) 

# Plot
svg(width=7, height=7)
plot(network,width=20, vertex.size=c(50,25,25,18,8,18,8),vertex.label=NA, vertex.color=rgb(0.1,0.7,0.8,0.5) )
dev.off()

svg(width=8, height=8)
plot(network2,width=20, vertex.size=c(50,25,25,18,18,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8),vertex.label=NA, vertex.color=rgb(0.1,0.7,0.8,0.5) )
dev.off()

