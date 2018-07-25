public class PizzaStoreCstmCntrlr 
{
    
      private final Menu__c mnu;     
    // The extension constructor initializes the private member
    // variable acct by using the getRecord method from the standard
    // controller.
    public PizzaStoreCstmCntrlr(ApexPages.StandardSetController stdController) 
    {
        this.mnu = (Menu__c)stdController.getRecord();
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