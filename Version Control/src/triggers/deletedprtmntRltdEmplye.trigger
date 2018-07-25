trigger deletedprtmntRltdEmplye on Dprtmnts__c (before delete)
{
list<Employee__c> emp=[select name,id from Employee__c where Dprtmnt_ID__c =:trigger.old];
    delete emp;
}