trigger deleteRelatedRecordOnCustomer on Customer__c (before delete) 
{
    list<CutomerMedia__c> cstm=[select id,name  from CutomerMedia__c where Customer__c=:trigger.old];
    delete cstm;

}