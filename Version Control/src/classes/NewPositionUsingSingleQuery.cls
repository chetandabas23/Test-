public class NewPositionUsingSingleQuery
{
    list<Position__c> Position;
    public void upsertmethod()
    {
        Position__c v=new Position__c(Name='Testing Analyst',Salary__c=50000,Department__c='a067F000003Qd71',Job_Description__c='Testing Analyst Job');
        
        Position__c k=new Position__c(Name='Software Analyst',Salary__c=75000,Department__c='a067F000003Qd76',Job_Description__c='Software Analyst job');
        Position=new List<Position__c>{v,k};
            upsert Position;
			
    }

}