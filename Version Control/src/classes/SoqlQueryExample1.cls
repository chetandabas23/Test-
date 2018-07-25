public class SoqlQueryExample1
{
    public void SoqlQuerymethod()
    {
        list<Position__c> ps=[select id,name,CTC__c,Status__c from Position__c where name like '%developer%'];
        for(Position__c qry:ps)
        {
            System.debug('id of a given record is'+qry.id);
            system.debug('name of a given record is'+qry.Name);
            system.debug('ctc for a particular record is'+qry.CTC__c);
            System.debug('status is '+qry.Status__c);
        }
    }

}