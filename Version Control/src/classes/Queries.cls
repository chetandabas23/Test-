public class Queries
{
   List<Position__c> position;
       public void upsertmethod()
   {
       Position__c a=new position__c(Name='CEO',Department__c='a067F000003Qd71',Salary__c=120000,Job_Description__c='CEO Job');
       Position__c b=new position__c(Name='Software Analyst',id='a017F00000Pndvy',Salary__c=80000,Department__c='a067F000003Qd71',Job_Description__c='Software Analyst Job');
       
       position=new List<Position__c>{a,b};
           upsert position;
   }

}