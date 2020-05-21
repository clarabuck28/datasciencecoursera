pollutantmean <- function(directory, pollutant, id = 1:332){
  olddirectory<-getwd()
  setwd(directory)
  myvector <- c()
  for(x in id){
    filename <- paste(sprintf("%03d",x),".csv",sep="")
    frame<-read.csv(filename)
    if(pollutant == "sulfate"){
      newvector<-frame[,2]
      myvector<-c(myvector,newvector)
    }
    else if (pollutant =="nitrate"){
      newvector<-frame[,3]
      myvector<-c(myvector,newvector)
    }
  }
  setwd(olddirectory)
  mean(myvector,na.rm = TRUE)
}

#pollutantmean("/Users/clarabuck1/Desktop/datasciencecoursera/specdata","sulfate",c(1,2))

