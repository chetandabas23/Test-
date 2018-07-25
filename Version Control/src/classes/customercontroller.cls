public class customercontroller {

    private final CustomersPizzaStore__c cstm;
    public customercontroller(apexpages.StandardsetController stdcontroller)
    {
        this.cstm=(CustomersPizzaStore__c)stdcontroller.getRecord();
    }
    public pagereference gotoview()
    {
        pagereference pr=new PageReference('/apex/ViewCustomer');
        return pr;
    }
    public pagereference create()
    {
      pagereference pr1=new pagereference('/apex/createcustomer');
        return pr1;
    }

}