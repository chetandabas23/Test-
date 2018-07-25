trigger PizzaStoreOrderEmail on Orders__c (before insert) 
{
    list<String> ordr=new list<String>();
    for(Orders__c ord:trigger.new)
    {
        ordr.add(ord.Customer_Email__c);
    }
       list<CustomersPizzaStore__c> cstmer=[select Email__c from CustomersPizzaStore__c where Email__c in:ordr];
    for(customersPizzaStore__c c2:cstmer)
 {
        for(Orders__c o1:trigger.new)
        {
            if(o1.Customer_Email__c != c2.Email__c) 
            {
                o1.adderror('Email id should be equal');
            }
        }
    }
    

}