trigger DsntDeleteRelatedRecordOnProduct on Product__c (before delete) 
{
    for(Product__c p:[select id from Product__c where id in(Select Products__c from order__C) and id in:Trigger.old])
    {
                trigger.oldmap.get(p.id).addError('cannot delete product with related orders.');

    }
}