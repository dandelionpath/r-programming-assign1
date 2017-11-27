## problem 1
pollutantmean<-function(directory, pollutant, id=1:332){
 ## 1. list all your files, 2. have a vector to save the value of means.
  ##3. read through each files to get the pollutant. 4.calculate the mean and save.
  filelist<-list.files(path=directory, pattern=".csv",full.name=TRUE)
  values<-numeric()##inicial empty vector
  
  for (i in id){
    data<-read.csv(filelist[i])
    values<-c(values, data[[pollutant]])
  }
  mean(values,na.rm=TRUE)
}

pollutantmean("/Users/yutongliu/Documents/R programming/specdata","nitrate")

