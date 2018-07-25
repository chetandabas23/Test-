trigger EmailDuplicacyOnCustomer on CustomersPizzaStore__c (before insert) 
{
	List<String> eml=new List<String>();
    for(CustomersPizzaStore__c cstm:Trigger.new)
    {
        eml.add(cstm.Email__c);
    }
    list<CustomersPizzaStore__c> cstmr=[select Email__c from CustomersPizzaStore__c where Email__c =:eml];
    for(CustomersPizzaStore__c cs1:Trigger.new)
    {
        for(CustomersPizzaStore__c cs2:cstmr)
        {
            if(cs1.Email__c==cs2.Email__c)
            {
                cs1.addError('email id should not be same');
            }
        }
    }
}