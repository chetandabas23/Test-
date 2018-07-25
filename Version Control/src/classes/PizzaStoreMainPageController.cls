public class PizzaStoreMainPageController 
{
	 private final CustomersPizzaStore__c cstmr;
    public PizzaStoreMainPageController(ApexPages.StandardSetController stdController) 
    {
        this.cstmr=(CustomersPizzaStore__c)stdController.getRecord();
    }
    public pagereference customer()
    {
        pagereference pr=new pagereference('/apex/CustomerMainPage');
        return pr;
    }
    public pagereference menu()
    {
        pagereference pr1=new pagereference('/apex/PizzaStoreAddMultipleMenuButtons');
        return pr1;
    }
    public pagereference order()
    {
     	pagereference pr2=new pagereference('/apex/OrderButtons');
        return pr2;
    }
}