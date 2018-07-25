trigger IfTrnrChngsDnTrnee on Trainer__c (after insert,after update)
{
/*	list<Trainee__c> trne=new list<Trainee__c>();
    if(Trigger.isInsert || trigger.isUpdate)
    {
        list<Trainee__c> trane=new list<Trainee__c>();
        for(trainer__c trn:[select id,parent_to_child__c from trainer__c])
        {
            trane.add([select id,parent_to_child__c,trainer__c from trainee__c where trainee__c.trainer__c =:trn.id]);
        }
        for(trainer__c trnr:[select id,parent_to_child__c from trainer__c])
        {
            for(trainee__c tranee:trane)
            {
                if(trnr.id==tranee.trainer__c)
                {
                    tranee.parent_to_child__c=trnr.parent_to_child__c;
                    trne.add(tranee);
                }
                
            }
            
        }
        update trne;
    }*/
}