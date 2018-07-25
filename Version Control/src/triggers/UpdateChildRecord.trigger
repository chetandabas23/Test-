//update child(Conatct,Opportunity) record whenver some particular fields of an account record changes
trigger UpdateChildRecord on Account (After Update)
{
    //This will only works if the account field is updated
   Map<Id, Account> AccountMapType=new map<Id,Account>();
    Map<Id,account> AccountMapDescription=new map<Id,Account>();
    Map<Id,Account> AccountMapIndustry=new Map<Id,Account>();
    for(Account acc:trigger.new)
    {
        Account AccountOld=trigger.oldMap.get(acc.Id);
        If(acc.Type !=AccountOld.Type)
        {	
            AccountMapType.put(acc.Id, acc);
        }
    
   
         If(acc.Description !=AccountOld.Description)
        {
            AccountMapDescription.put(acc.id, acc);
        }
       
  
         If(acc.Industry !=AccountOld.Industry)
        {
            AccountMapIndustry.put(acc.Id,acc);
        }
    }
    if(AccountMaptype.size() > 0)
    {
        List<Contact> ContactUpdate=[Select Id,AccountID,Description from contact where AccountID IN:AccountMaptype.keySet()];
        List<Opportunity> OpportunityUpdate=[Select Id,AccountId,Description from opportunity where AccountID IN:AccountMaptype.keySet()];
        For(Contact cntc:ContactUpdate)
        {
            cntc.Description='Parent Account Field Updated:- Type';
        }
        for(Opportunity opp:OpportunityUpdate)
        {
            opp.Description='Parent Account Field Updated:- Type:'+Account.type;
        }
        update ContactUpdate;
        Update OpportunityUpdate;
    }
    if(AccountMapDescription.size() > 0)
    {
        List<Contact> ContactUpdate1=[Select Id,AccountID,Description from contact where AccountID IN:AccountMaptype.keySet()];
        List<Opportunity> OpportunityUpdate1=[Select Id,AccountId,Description from opportunity where AccountID IN:AccountMaptype.keySet()];
        For(Contact cntc:ContactUpdate1)
        {
            cntc.Description='Parent Account Field Updated:-Description';
        }
        for(Opportunity opp:OpportunityUpdate1)
        {
            opp.Description='Parent Account Field Updated:- Description:'+Account.Description;
        }
        update ContactUpdate1;
        Update OpportunityUpdate1;
    }
    if(AccountMapIndustry.size() > 0)
    {
         List<Contact> ContactUpdate2=[Select Id,AccountID,Description from contact where AccountID IN:AccountMaptype.keySet()];
        List<Opportunity> OpportunityUpdate2=[Select Id,AccountId,Description from opportunity where AccountID IN:AccountMaptype.keySet()];
        For(Contact cntc:ContactUpdate2)
        {
            cntc.Description='Parent Account Field Updated:- Industry';
        }
        for(Opportunity opp:OpportunityUpdate2)
        {
            opp.Description='Parent Account Field Updated:- Industry:'+Account.Industry;
        }
        update ContactUpdate2;
        Update OpportunityUpdate2;
    }
    
}