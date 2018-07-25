public class PizzaStoreMenuController 
{
    private final Menu__c menu;
    public PizzaStoreMenuController(ApexPages.StandardSetController stdController) 
    {
        this.menu=(Menu__c)stdController.getRecord();
    }
    public pagereference viewmenu()
    {
        pagereference pr=new pagereference('/apex/PizzaStoreViewMenu');
        return pr;
    }
    public pagereference createmenu()
    {
        pagereference pr1=new pagereference('/apex/PizzaStoreAddMultipleMenu');
        return pr1;
    }

}