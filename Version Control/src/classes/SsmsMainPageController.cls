public class SsmsMainPageController
{
    private final Customer__c stdnt;
    public SsmsMainPageController(ApexPages.StandardSetController stdController)
    {
        this.stdnt=(Customer__c)stdController.getRecord();
    }
    public pagereference CreateNewStudentRecord()
    {
        pagereference pr=new pagereference('/apex/NewStudentRecord');
        return pr;
    }
    public pagereference viewExistingRecords()
    {
        pagereference pr1=new pagereference('/apex/ExistingStudentRecord');
        return pr1;
    }
    

}