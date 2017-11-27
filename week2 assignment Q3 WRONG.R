corr<-function(directory,threshold=0){
  filelist<-list.files(path=directory, pattern=".csv",full.names=TRUE)
  dat <- vector(mode = "numeric", length = 0)
  ##dat<-numeric()
  
  for (i in 1:length(filelist)){
    data<-read.csv(filelist[i],header=TRUE)
    nobs<-nrow(data[complete.cases(data),])
    ##nobs<-sum(complete.cases(data))
       if (nobs > threshold){
         dat<-c(dat,cor(data$nitrate,data$sulfate))
    }
        
  }
  return(dat)
}
corr("/Users/yutongliu/Documents/R programming/specdata",threshold=0)