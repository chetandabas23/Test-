public class SoqlQueryExample
{
	public void soqlmethod()
    {
        list<contact> sc=[select Name,id from contact where Name like 'A__%'];
        for(contact con:sc)
        {
            system.debug('id of a given field is' +con.id);
        	system.debug('name for the given record is' +con.Name);
        }
        
    }
}