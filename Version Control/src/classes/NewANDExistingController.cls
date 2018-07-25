public class NewANDExistingController
{
    public Account account{get;private set;}
    public NewAndExistingController()
    {
        Id id=ApexPages.currentPage().getParameters().get('id');
        account=(id==null)? new account():[select name,phone,industry from account where id=:id];
            
    }
	public pagereference save()
    {
        try{
            upsert(account);
        }
        catch(DmlException e)
        {
            apexpages.addmessages(e);
            return null;
        }
        pagereference pr=apexpages.currentPage();
        return pr;
    }
}