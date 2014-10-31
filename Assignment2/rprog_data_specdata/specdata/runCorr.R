source("corr.R")
cr <- corr("D:/Nanda/R-programming/Assignment2/rprog_data_specdata/specdata/", 150)
#cr2 <- round(cr2,5)
head(cr)
summary(cr)


cr <- corr("D:/Nanda/R-programming/Assignment2/rprog_data_specdata/specdata/", 400)
#cr2 <- round(cr2,5)
head(cr)
summary(cr)


cr <- corr("D:/Nanda/R-programming/Assignment2/rprog_data_specdata/specdata/", 5000)
#cr2 <- round(cr2,5)
summary(cr)
length(cr)

cr <- corr("D:/Nanda/R-programming/Assignment2/rprog_data_specdata/specdata/")
summary(cr)
length(cr)