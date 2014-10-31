# Best Hospital in State
best <-function(state, outcome){
    
    setwd("d:/nanda/r-programming/assignment3/")
    outcomedata <- as.data.frame(read.csv("d:/nanda/r-programming/assignment3/outcome-of-care-measures.csv", colClasses="character"))    
  
    schkState <- as.data.frame(subset(outcomedata,outcomedata$State==state))
   if(nrow(schkState)>0 ){
    
   schkState[[11]] <- as.numeric(schkState[[11]])
   schkState[[17]] <- as.numeric(schkState[[17]])
   schkState[[23]] <- as.numeric(schkState[[23]])
   
        if(toupper(outcome) == "HEART ATTACK"){
            
            schkState <- schkState[order(schkState[11],schkState[2]),]
           
            schkState[1,2]
        }
        else if(toupper(outcome) == "HEART FAILURE"){
            schkState <- schkState[order(schkState[17],schkState[2]),]
          
          schkState[1,2]
           
        }
        #pneumonia
        else if(toupper(outcome) == "PNEUMONIA"){
            schkState <- schkState[order(schkState[23],schkState[2]),]
           
            schkState[1,2]
            
        }
        else
        {
            merrormessage <- "invalid outcome"
            stop(merrormessage)
        }
    }
    else
    {
        merrormessage <-  "invalid state"
        stop(merrormessage)
    }
}




