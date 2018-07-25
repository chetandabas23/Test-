trigger throwAnExceptionOnOrders on Orders__c (before insert) 
{
    for(Orders__c ord:Trigger.New)
    {
        if(Ord.Customer_Name__c==null)
        {
         	ord.addError('you must specify the customer Name');
        }
    }

}