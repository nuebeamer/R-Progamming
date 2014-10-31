corr <- function(directory, threshold = 0) {
    setwd(directory)
    dfileslist = list.files()
    dfiles = length(dfileslist)
    ### read all files into xData
    for (i in 1:dfiles)
    {
       # print(i)
        ## check if Cross data object exists
        if (exists("xData")){
            ## Bind existing rows
            xData <- rbind(xData, read.csv(dfileslist[i],header=T))
        }
        else
        {
            ## create xData read from CSV
            xData <- read.csv(dfileslist[i],header=T)
        }
    }
    #xData[[sulfate]]
    #xData[["sulphate"]]
    
       abc <- var(xData[["sulfate"]], xData[["nitrate"]],na.rm=T, use="pairwise.complete.obs")
        
        def <- cov(xData[["sulfate"]], xData[["nitrate"]], use="pairwise.complete.obs",
            method = c("pearson"))
        
    ghi <-    cor(xData[["sulfate"]], xData[["nitrate"]], use="pairwise.complete.obs",
            method = c("pearson"))
        print(cat("var =",abc,";cov=",def,";cor=",ghi))
    cov2cor(def)
    head<-corr
    
}

corr("D:/Nanda/R-programming/Assignment2/rprog_data_specdata/specdata/", 1)
