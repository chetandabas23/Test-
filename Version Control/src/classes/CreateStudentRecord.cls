public with sharing class CreateStudentRecord
{
    Customer__c cstmr=new Customer__c();
    public list<Customer__c> listCustomer{get; set;}
    
        public createStudentRecord()
    {
        listCustomer=new list<Customer__c>();
        listCustomer.add(cstmr);
    }
    public pagereference saveCustomer()
    {
        insert listCustomer;
        pagereference pr=new pagereference('/apex/SSMSviewExistingRecords');
        return pr;
    }
    public pagereference cancel()
    {
        pagereference pr1=new pagereference('/apex/SsmsStudentMainPage');
        return pr1;
    }

}