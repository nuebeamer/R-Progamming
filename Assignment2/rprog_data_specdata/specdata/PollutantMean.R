pollutantmean <- function(directory, pollutant, id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'pollutant' is a character vector of length 1 indicating
    ## the name of the pollutant for which we will calculate the
    ## mean; either "sulfate" or "nitrate".
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    
    ## Return the mean of the pollutant across all monitors list
    ## in the 'id' vector (ignoring NA values)
   # setwd(directory)
    # Read list of files
    dfileslist = list.files()
    # count of files in directory
    dfiles = length(dfileslist)
    ### Loop through sequence 
    for (i in 1:length(id))
    {
        x = id[i]
        ## check if Cross data object exists
        if (exists("xData")){
            ## Bind existing rows
            xData <- rbind(xData, read.csv(dfileslist[x],header=T))
        }
        else
        {
            ## create xData read from CSV
            xData <- read.csv(dfileslist[x],header=T)
        }
        
    }
   ## Mean function call on column with removing Na - true
   round(mean(xData[[pollutant]], na.rm=TRUE),3)
     
}
pollutantmean("D:/Nanda/R-programming/Assignment2/rprog_data_specdata/specdata/","sulfate", id=1:10)
pollutantmean("D:/Nanda/R-programming/Assignment2/rprog_data_specdata/specdata/","nitrate", id=70:72)

pollutantmean("D:/Nanda/R-programming/Assignment2/rprog_data_specdata/specdata/","nitrate", id=23)
