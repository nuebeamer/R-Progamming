## Complete
complete <- function(directory, id = 1:332) {
  #  setwd(directory)
    dfileslist = list.files(pattern="*.csv")
    dfiles = length(dfileslist)
    ### Loop through sequence 
 #print(length(id))
#     #stop
     for (i in 1:length(id))
     {
#         print(id[i])
         x = id[i]
        # print(x)
#         ## create xData read from CSV
         fReadcsv= read.csv(dfileslist[x],header=T)
#         ## check if Cross data object exists
         if (exists("xData")){
             xData <- rbind(xData,data.frame(id=i,nobs=NROW(na.omit(fReadcsv))))
         }
         else
         {
             xData <- data.frame(id=i,nobs=NROW(na.omit(fReadcsv)))
         }
     }
   xData[]
}
# complete("D:/Nanda/R-programming/Assignment2/rprog_data_specdata/specdata/", id=1)
# 
#complete("D:/Nanda/R-programming/Assignment2/rprog_data_specdata/specdata/", c(2, 4, 8, 10, 12))
# 
# complete("D:/Nanda/R-programming/Assignment2/rprog_data_specdata/specdata/", 30:25)
# 
# complete("D:/Nanda/R-programming/Assignment2/rprog_data_specdata/specdata/", 3)
