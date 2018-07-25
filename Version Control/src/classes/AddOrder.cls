public class AddOrder 
{
 orders__c ord=new orders__c();
    public list<orders__c> listorder{get;set;}
    public addorder()
    {
        listorder=new list<orders__c>();
        listorder.add(ord);
    }
    public void addorder()
    {
        orders__c or1=new orders__c();
        listorder.add(or1);
    }
    public pagereference saveorder()
    {
        insert listorder;
        pagereference pr1=new pagereference('/apex/vieworder');
        return pr1;
    }

}