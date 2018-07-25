trigger PizzaStoreCustomerDelete on CustomersPizzaStore__c (before insert)
{
    List<string> cstm=new list<string>();
    for(CustomersPizzaStore__c cstmr:trigger.new)
    {
        cstm.add(cstmr.Email__c);
    }
    list<CustomersPizzaStore__c> cstmer=[select Email__c from CustomersPizzaStore__c where Email__c in:cstm];
    for(CustomersPizzaStore__c c1:trigger.new)
    {
        for(customersPizzaStore__c c2:cstmer)
        {
            if(c2.Email__c == c1.Email__c) 
            {
                c1.adderror('Duplicate name');
             }
        }
    }
}