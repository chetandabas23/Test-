trigger AddRelatedRecord on Account (after insert,after update)
{
    List<opportunity> oplist=new list<Opportunity>();
    
    map<id,account> AcctWithOpps=new map<id,account>([select id,(select id from opportunities) from account where id in : Trigger.new]);
    for(account a:Trigger.new)
    {
        if(AcctWithOpps.get(a.id).Opportunities.size()==0)
        {
            oplist.add(new Opportunity(name=a.name+'Opportunity',StageName='Prospecting',CloseDate=System.today().addMonths(1),AccountId=a.id));
        }
    }
if(oplist.size()>0)
{
    insert oplist;
}
}