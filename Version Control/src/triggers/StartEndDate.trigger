trigger StartEndDate on Job_Application__c (before insert) 
{
    List<string> posid=new list<string>();
    for(Job_Application__c ja1:Trigger.new)
    {
        posid.add(ja1.Position__c);
    }
    list<Position__c> pstn=[select id,Start_Date__c,End_Date__c from Position__c where id in:posid];
    
    List<job_Application__c> ins=new list<job_Application__c>();
    for(Position__c p: pstn)
    {
        for(Job_Application__c j:Trigger.new)
        {
            if(p.id==j.Position__c)
            {
               j.Start_Date__c=p.Start_Date__c;             
               j.End_Date__c=p.End_Date__c;
                ins.add(j);
            }
        }
    }


}