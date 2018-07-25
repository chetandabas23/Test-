trigger AddRelatedRecordOnPosition on Position__c (after insert,after delete)
{
    List<Candidate__c> ca=new list<Candidate__c>();
    map<id,Position__c> PstnWithCnd=new map<id,Position__c>([select id,(select id from Candidates__r) from Position__c where id IN : Trigger.new]);
    for(Position__c p:Trigger.new)
    {
        if(PstnWithCnd.get(p.id).Candidates__r.size()==0)
        {
            ca.add(new Candidate__c(name=p.name+'Candidate',Social_Security_Number__c='133-32-3543',Zip_Code__c='58381-6885',Country__c='india',Position1__c=p.id));
        
        }
    }
    if(ca.size()>0)
{
    insert ca;
}


}