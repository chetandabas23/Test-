public class PositionUpdate
{
    public void pos()
    {
        Position__c pos=new Position__c();
        pos.Name='Software Analyst';
        pos.Salary__c=70000;
        pos.Job_Description__c='Software Analyst job';
        pos.Department__c='a067F000003Qd76';
        
        
        insert pos;
        
    }

}