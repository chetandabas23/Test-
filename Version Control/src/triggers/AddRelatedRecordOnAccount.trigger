trigger AddRelatedRecordOnAccount on Account (after insert,after update)
{	
     /* if(trigger.isinsert)
    {
        list<contact> cntc=new list<contact>();
        map<id,Account> AccntWithCntct=new map<id,account>([select id,(select id from contacts) from account where id 
                                                            in:Trigger.new]);
        for(account acc:Trigger.new)
        {
            if(AccntWithCntct.get(acc.id).contacts.size()==0)
            {
                cntc.add(new contact(Firstname='ReLated',LastName='Record1',AccountID=acc.id));
                cntc.add(new contact(Firstname='Related',LastName='Record2',AccountID=acc.id));
            }
        }
        if(cntc.size()>0)
        {
            insert cntc;
        }
    }
     if(trigger.isupdate)
    {
        list<opportunity> oppr=new list<opportunity>();
        map<id,account> AccntWithOppr=new map<id,account>([select id,(select id from opportunities) from account where id in:Trigger.new]);
        for(account acc:Trigger.new)
        {
            if(AccntWithOppr.get(acc.id).opportunities.size()==0)
            {
                oppr.add(new opportunity(Name='Related Opportunity1',AccountID=acc.Id,CurrencyIsoCode='Indian Rupee',stageName='Closed won'));
                oppr.add(new opportunity(Name='Related Opportunity2',AccountID=acc.Id,CurrencyIsoCode='Indian Rupee',stageName='Closed won'));
            }
        }
        if(oppr.size()>0)
        {
            insert oppr;
        }
    }

	*/
}