public class UpdateRelRecord 
{
    public void upd()
    {
        	contact updatecon=[select Account.Name from contact where FirstName='Priya' and LastName='Sharma'];
            updatecon.Phone='46-324-153';
        	updatecon.account.industry='IT';
        	update updatecon;
            update updatecon.Account;
    }

}