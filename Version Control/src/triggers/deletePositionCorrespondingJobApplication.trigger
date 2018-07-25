trigger deletePositionCorrespondingJobApplication on Position__c (before delete) 
{
   List<Job_Application__c> JA=[select name,id from Job_Application__c where Position__c in :Trigger.old];
    								//***OR***
    //for(Job_Application__c JA:[select id from Job_Application__c where Position__c in :Trigger.old])
   
    
    delete JA;
}