trigger throwAnExceptionOnOrders1 on Orders__c (before insert)
{
    for(orders__c ord:Trigger.new)
    {
        if(ord.Menu__c==null || ord.Quantity__c==null)
        {
            ord.addError('Before Placing an Order,You Must specify the Menu and Qunatity');
        }
    }

}