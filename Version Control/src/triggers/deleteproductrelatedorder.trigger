trigger deleteproductrelatedorder on Product__c (before delete)
{
    list<Order__c> ord=[select id,name from Order__c where Products__c =:trigger.old];
    delete ord;

}