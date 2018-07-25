public class SSMSStudentController 
{
     private final Customer__c cstm;
    public SSMSStudentController(apexpages.StandardsetController stdcontroller)
    {
        this.cstm=(Customer__c)stdcontroller.getRecord();
    }
    public pagereference gotoview()
    {
        pagereference pr=new PageReference('/apex/ViewExistingReocrds');
        return pr;
    }
    public pagereference create()
    {
      pagereference pr1=new pagereference('/apex/CreateStudentReocrd');
        return pr1;
    }
}