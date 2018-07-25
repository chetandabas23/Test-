public class AssociateCandidateQuery 
{
    public void cndt()
    {
        Position__c pos=new Position__c(Name='Marketing Specialist',Salary__c=65000,Department__c='a067F000003Qd71',Job_Description__c='Marketing Specialist');
        insert pos;
       Candidate__c cand=new Candidate__c(Name='Sahil',Position1__c='a017F00000PFAtM');
        Candidate__c cand1=new Candidate__c(Name='varun',Position1__c='a017F00000PFAtM');
        insert cand;
        insert cand1;
    }

}