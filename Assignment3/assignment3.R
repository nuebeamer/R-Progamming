
#head(outcome)
#names(outcome)
#outcome[,11] <- as.numeric(outcome[,11])
#hist(outcome[,11])
best <-function(state, outcome){
    outcomedata <- as.data.frame(read.csv("d:/nanda/r-programming/assignment3/outcome-of-care-measures.csv", colClasses="character"))    
    uniquestate <- as.data.frame(unique(outcomedata$State))
    colnames(uniquestate) <- "State"
   
   schkState <- as.data.frame(subset(outcomedata,outcomedata$State==state && na.rm=TRUE, drop=TRUE))
    colnames(schkState) <- colnames(outcomedata)
   schkapp <- lapply(schkState, min(schkState[[11]))
   print(schkapp)
   
   
}
best("TX","Hospital 30-Day Death (Mortality) Rates from Heart Attack")

