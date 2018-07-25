public class OrderMultipleButtons 
{
     private final Orders__c ordr;
    public OrderMultipleButtons(ApexPages.StandardSetController stdController) 
    {
        this.ordr=(Orders__c)stdController.getRecord();
    }
    public pagereference vieworder()
    {
        pagereference pr=new pagereference('/apex/ViewOrder');
        return pr;
    }
    public pagereference createorder()
    {
        pagereference pr1=new pagereference('/apex/AddOrder');
        return pr1;
    }

}