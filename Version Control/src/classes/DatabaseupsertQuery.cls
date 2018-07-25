public class DatabaseupsertQuery 
{
    public void upsrt()
    {
        list<Candidate__c> canList=new list<Candidate__c>
        {
            new Candidate__c(Name='Aniket',Age__c=20,Country__c='India',Position1__c='a017F00000PEtdF',Zip_Code__c='12345-3541'),
            new Candidate__c(Name='Rudra',Age__c=23,Country__c='US',Position1__c='a017F00000PEtdF',Zip_Code__c='12345-3541'),
                new Candidate__c()
         };
        database.SaveResult[] srlist=database.insert(canlist,true);
        for(database.SaveResult sr: srlist)
        {
            if(sr.isSuccess())
            {
                System.debug('successfully inserted contact.contact.ID:'+sr.getId());
            }
            else
            {
                for(Database.Error err: sr.getErrors())
                {
                    system.debug('the following error has occured');
                    system.debug(err.getStatusCode()+':'+err.getMessage());
                    system.debug('contact fields that affected this error:'+err.getfields());
                }
            }
        }
         
       
        
    }
    

}