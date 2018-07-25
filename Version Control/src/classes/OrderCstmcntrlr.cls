public class OrderCstmcntrlr
{
    private final orders__c ordr;
    public OrderCstmcntrlr(ApexPages.StandardSetController stdController) 
    {
        this.ordr=(orders__c)stdController.getRecord();
    }
     public pagereference vieworder()
    {
        pagereference pr1=new pagereference('/apex/ViewOrder');
        return pr1;
    }
    public pagereference create()
    {
        pagereference pr1=new pagereference('/apex/AddOrder');
        return pr1;
    }

}