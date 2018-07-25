public class CandidateRecordInsert
{
    public void crte()
    {
        candidate__c cndt=new candidate__c(Name='Charles',Age__c=21,Country__c='US',Zip_Code__c='12345-6846',Position1__c='a017F00000PEtdF');
        insert cndt;
        candidate__c cndt1=new candidate__c(Name='Parth',Age__c=22,country__c='India',Zip_Code__c='13454-2413',Position1__c='a017F00000PEtdF');
        insert cndt1;
        
    }
 
}