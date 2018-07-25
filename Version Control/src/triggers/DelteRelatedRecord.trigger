trigger DelteRelatedRecord on Account (before insert) 
{
/*  for(account a:[select id from account where id in (select accountid from opportunity) and id in:Trigger.old])
    {
        trigger.oldmap.get(a.id).addError('cannot delete account with related opportunities.');
                
    }*/
}