complete <- function(directory, id = 1:332){
  olddirectory<-getwd()
  setwd(directory)
  myframe<-data.frame()
  #if(is.numeric(id)){
    #id <- 1:id
  #}
  for(x in id){
    filename <- paste(sprintf("%03d",x),".csv",sep="")
    smallframe<-read.csv(filename)
    counter<-0
    for(n in 1:nrow(smallframe)){
      if(!is.na(smallframe[n,2] & smallframe[n,3])){
        counter<-counter+1
      }
    }
    myframe <- rbind(myframe,c(x,counter))
  }
  colnames(myframe)<-c("id","nobs")
  setwd(olddirectory)
  myframe
}
