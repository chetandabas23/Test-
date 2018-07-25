public class updatecountryandstatus 
{
    public void upd()
    {
        Candidate__c cnd=[select Candidate__c.Name from candidate__c where Name='Sahil'];
        cnd.Country__c='US';
        cnd.Zip_Code__c='13245-3215';
       update cnd;
        position__c pos=[select Name from Position__c where Id='a017F00000PFAtM' limit 1];
        pos.Status__c='new';
        
        update pos;
    }

}