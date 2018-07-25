trigger EmailAlertCustomer on Customer__c (after insert,after Update)
{
    if(trigger.isInsert)
    {
        string cust=trigger.new[0].Email_id__c;
        string cstmname=trigger.new[0].Student_Name__c;
        EmailManager.sendmail(cust,'Welcome!!','New Candidate Record i.e '+cstmname+' Inserted');
        
    }
    else if(trigger.isupdate)
    {
        string cust=trigger.new[0].Email_id__c;
        string cstmname=trigger.new[0].Student_Name__c;
        EmailManager.sendmail(cust, 'Welcome Again', 'Existing Record i.e '+cstmname+ ' Updated');
    }

}