public class DeleteRecord 
{
    public void dlt()
    {
        Candidate__c[] namedel=[select name from Candidate__c where name='charles'];
        delete namedel;
    }

}