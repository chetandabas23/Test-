public class position
{
    private final Position__c pstn;
    public Position()
    {
        pstn=[select id,name,end_date__c,start_date__c,Status__c from position__c where id =:apexpages.currentPage().getparameters().get('id')];
    }
    public position__c getpstn()
    {
        return pstn;
    }
    public pagereference save()
    {
        upsert pstn;
       	pagereference pr=new pagereference('/apex/success');
        return pr;
    }

}