trigger UpdateTrainerRecord on Trainee__c (after insert,after update)
{
    list<Trainer__c> trnr=new list<Trainer__c>();
    if(trigger.isInsert || trigger.isupdate)
    {
        list<Trainer__c> trner=new list<Trainer__c>();
        for(Trainee__c trne:trigger.new)
        {
            trner.add([select id,Dependent_Field__c from Trainer__c where id =:trne.Trainer__c]);
        }
        for(trainer__c tranr:trner)
        {
            for(Trainee__c trane:Trigger.new)
            {
                if(tranr.id==trane.Trainer__c)
                {
                 	tranr.Dependent_Field__c='trainee'+trane.Dependent_Field__c;   
                   

                }
				   
                  trnr.add(tranr);
            }
        }
        update trnr;

    }

}