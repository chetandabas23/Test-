public class ViewCustomer 
{
	private final CustomersPizzaStore__c view;
    public ViewCustomer(ApexPages.StandardSetController stdController) 
    {
        this.view=(CustomersPizzaStore__c)stdController.getRecord();
    }
    public pagereference create()
    {
		pagereference pr=Page.createcustomer;
        return pr;
    }
}