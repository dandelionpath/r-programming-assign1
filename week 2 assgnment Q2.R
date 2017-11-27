##Write a function that reads a directory full of files and reports the number of completely observed cases in each data file. 
##The function should return a data frame where the first column is the name of the file and the second column is the number of complete cases. 
complete<-function(directory,id=1:332){
  ##1. also read files 2. create empty data frames 
  ##3. for each csv, subset the row with no missing value
  ##4.count all missing value in each cvs.
  ##5.put all of them into data frame.
  filelist<-list.files(path=directory, pattern=".csv",full.names=TRUE)
  nobs<-numeric()
  
  for (i in id){
    data<-read.csv(filelist[i])
    nrow<-nrow(data[complete.cases(data),])
    nobs<-c(nobs,nrow)
    ##OR!!! nobs<-c(nobs,sum(complete.cases(read.csv(filelist[i])))) as true=1 and false=0
  }
  data.frame(id,nobs)
}
