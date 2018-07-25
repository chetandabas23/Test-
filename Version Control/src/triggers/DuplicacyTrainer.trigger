trigger DuplicacyTrainer on Trainer__c (before insert,before update) 
{
    list<string> trnr=new list<string>();
    for(trainer__c t:trigger.new)
        trnr.add(t.name);
    list<trainer__c> trner=[select name from trainer__c where name=:trnr];
    for(trainer__c trn:trigger.new)
    {
        for(trainer__c tranr:trner)
        {
            if(trn.name==tranr.name)
                {
                    trn.addError('duplicacy not allowed');
                }
        }
    }

}