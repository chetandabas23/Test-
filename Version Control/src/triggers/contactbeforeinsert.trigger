trigger contactbeforeinsert on Contact (before insert,before update)
{
    if(trigger.isinsert)
    {
        for(contact cntct:Trigger.new)
        {
            cntct.Description='New Contact Inserted '+userinfo.getUserId();
        }
    }
    if(trigger.isupdate)
    {
        for(contact cntct:Trigger.new)
        {
            cntct.Description='Contact Updated '+userinfo.getName();
            
        }
    }

}