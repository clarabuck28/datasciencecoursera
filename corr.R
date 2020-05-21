corr <- function(directory, threshold = 0){
  usefiles = c()
  for(x in 1:332){
    print(x)
    if(complete("specdata", x)[,2]>threshold){
      usefiles <- c(usefiles,x)
    }
  }
  olddirectory<-getwd()
  setwd(directory)
  correlations <- c()
  for(x in usefiles){
    filename <- paste(sprintf("%03d",x),".csv",sep="")
    smallframe<-read.csv(filename)
    mycorr<-cor(smallframe[,2],smallframe[,3], use="complete.obs")
    correlations<-c(correlations,mycorr)
  }
  setwd(olddirectory)
  correlations
}