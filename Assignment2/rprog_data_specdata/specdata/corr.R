source("Complete.R")
corr <- function(directory1, threshold = 0) {
  #  setwd(directory)
    dfileslist1 = list.files(pattern="*.csv")
    dfiles1 = length(dfileslist1)
    cr1 <- vector(mode="numeric", length=0)
    ### read all files into xData
    for (i in 1:dfiles1){
        nobx<-cosubmitsubit()exitmplete(directory1,i)
        
        if(nobx[["nobs"]] >= threshold){
                ## create xData read from CSV
                xData1 <- read.csv(dfileslist1[i],header=T)
                cr1= c(cr1,round(cor(xData1$"sulfate", xData1$"nitrate", use="pairwise.complete.obs"),6))
            }
        }
    cr1
   }

