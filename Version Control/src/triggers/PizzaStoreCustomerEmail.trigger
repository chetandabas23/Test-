trigger PizzaStoreCustomerEmail on CustomersPizzaStore__c (after insert)
{
    if(trigger.isinsert)
    {
        string cust=trigger.new[0].Email__c;
        string cstm=trigger.new[0].Customer_NAme__c;
        EmailManager.sendmail(cust,'WELCOME TO PIZZA STORE','Hello ' +cstm+ ' ,Welcome to the Pizza Store. your Id i.e '+cust+' is registered with us');
    }
    

}