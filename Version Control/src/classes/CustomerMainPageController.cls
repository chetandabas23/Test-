public class CustomerMainPageController 
{
     private final CustomersPizzaStore__c cstmr;
    public CustomerMainPageController(ApexPages.StandardSetController stdController) 
    {
        this.cstmr=(CustomersPizzaStore__c)stdController.getRecord();
    }
    public pagereference createcustomer()
    {
        pagereference pr2=new pagereference('/apex/createcustomer');
        return pr2;
    }
    public pagereference viewcustomer()
    {
        pagereference pr=new pagereference('/apex/viewCustomer');
        return pr;
    }
    public pagereference vieworder()
    {
        pagereference pr1=new pagereference('/apex/ViewOrder');
        return pr1;
    }
    
    /*public pagerefernce sendemail()
        {
            pagereference pr2=new pagereference(/apex/senemailcustomer);
            return pr2;
        }
*/
}