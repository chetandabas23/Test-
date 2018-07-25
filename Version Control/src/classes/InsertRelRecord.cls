public class InsertRelRecord 
{
    public void ins()
    {
        Account acct=new Account(Name='IRIS');
        insert acct;
        ID acctId=acct.Id;
        contact con=new contact(FirstName='Priya',LastName='Sharma',AccountId=acct.ID);
        insert con;
    }
}