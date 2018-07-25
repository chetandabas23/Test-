public class DeleteRelRecord 
{
    public void del()
    {
        Account deletecon=[select id from account where name='iris'];
        delete deletecon;
    }

}