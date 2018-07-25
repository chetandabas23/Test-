public class UpsertExample
{
    list<contact> contacts;
    public void upsertmethod()
    {
        contact v=new contact(FirstName='chetan',LastName='Dabas',Department='Technology');
        insert v;
        v.description='chetan record has been updated by the upsert operation';
        contact k=new contact(FirstName='Karishma',LastName='Dabas',Department='Technology');
        contact c=new contact(FirstName='ketan',LastName='Dabas',Department='Electrical');
        contacts =new List<contact>{v,k,c};
            upsert contacts;
			
    }
    public void showData()
    {
        for(contact con:contacts)
        {
            system.debug(con.FirstName +' '+con.LastName +' ' +con.Department);
        }
    }
}