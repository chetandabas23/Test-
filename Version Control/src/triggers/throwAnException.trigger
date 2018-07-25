trigger throwAnException on Contact (before delete)
{
	/*for(contact cntct:Trigger.old)
    {
        if(cntct.Account==null)
        {
            cntct.addError('you cannot delete a contact if it is related to account');
        }
    }*/
}