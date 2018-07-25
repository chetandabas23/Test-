public with sharing class createcustomer 
{
	CustomersPizzaStore__c cstmr=new CustomersPizzaStore__c();
    public list<CustomersPizzaStore__c> listcustomer{get; set;}
   
    public createCustomer()
    {
        listcustomer=new list<CustomersPizzaStore__c>();
        listcustomer.add(cstmr);
    }
  
    public pagereference savecustomer()
    {       
        insert listcustomer;
        pagereference pr=new pagereference('/apex/viewCustomer');
        return pr;
    }
    
    public pagereference cancel()
    {
        pagereference pr1=new pagereference('/apex/CustomerMainPage');
        return pr1;
    }
}