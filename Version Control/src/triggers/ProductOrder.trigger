trigger ProductOrder on Product__c (after insert) 
{
   if(Trigger.isInsert)
    {
        integer recordCount=Trigger.new.size();
        System.debug('Total No. Of records Inserted are:' +recordCount);
		/* for(Product__c pu:[select Total_order__c from Product__c])
         {
             pu.Total_Order__c = pu.Total_Order__c + recordCount;
         }*/
        
    }
    if(Trigger.isDelete)
    {
     integer recordCount=Trigger.old.size();
        System.debug('Total No. OF Records Deleted are:'+recordCount);
    }
}