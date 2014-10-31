# Rank Hospital in State
rankhospital <-function(state, outcome, num){
    options(warn=-1)
    setwd("d:/nanda/r-programming/assignment3/")
    outcomedata <- as.data.frame(read.csv("outcome-of-care-measures.csv", colClasses="character")) 
   if(nrow(outcomedata) > 0){
    if (toupper(num) =="BEST" ){
        num <- 1
    }

    
    schkState <- as.data.frame(subset(outcomedata,outcomedata$State==state) )
        if(toupper(outcome) == "HEART ATTACK"){
            schkState <- schkState[c(1,2,7,11)]
           
          
            if(NROW(schkState)>0 ){
                schkState[[4]] <- as.numeric(schkState[[4]])
                schkState <- na.omit(schkState)
                schkState <- schkState[order(schkState[4],schkState[2]),]
               # print(tail(schkState))
                HARank <- rank(schkState[[4]], na.last=TRUE, ties.method="first")
               
               schkState <- cbind(schkState,HARank)
               
               
            }
        }
        else if(toupper(outcome) == "HEART FAILURE"){
            schkState <- schkState[c(1,2,7,17)]
            schkState <- na.omit(schkState)
            if(NROW(schkState)>0 ){
                schkState[[4]] <- as.numeric(schkState[[4]])
                schkState <- na.omit(schkState)
                schkState <- schkState[order(schkState[4],schkState[2]),]
                HARank <- rank(schkState[[4]], na.last=TRUE, ties.method="first")
                
                schkState <- cbind(schkState,HARank)
                
               
            }
        }
        #pneumonia
        else if(toupper(outcome) == "PNEUMONIA"){
            schkState <- schkState[c(1,2,7,23)]
            if(NROW(schkState)>0 ){
                schkState[[4]] <- as.numeric(schkState[[4]])
                schkState <- na.omit(schkState)
                schkState <- schkState[order(schkState[4],schkState[2]),]
                HARank <- rank(schkState[[4]], na.last=TRUE, ties.method="first")
                
                schkState <- cbind(schkState,HARank)
                
               
            }
        }
        else
        {
            merrormessage <- "invalid outcome"
            stop(merrormessage)
        }
    if (toupper(num) == "WORST"){
        num <- max(schkState[5])
        #print(schkState[4])
        dfSubRank <- as.data.frame(subset(schkState,schkState[5] == num))
    }
    num <- as.numeric(num)
    if(is.numeric(num))
    {
        if(!(num > NROW(schkState))){
            dfSubRank <- as.data.frame(subset(schkState,schkState[5] == num)) 
        }
    }
    if(exists("dfSubRank")){
    dfSubRank <- dfSubRank[order(dfSubRank[5],dfSubRank[2]),]
    dfSubRank[1,2]
    }
    else{
        NA
    }
   }
   else{
       stop("invalid state")
   }
  
}



