trigger BillEmailAlert on Orders__c (After insert)
{
    
    if(trigger.isinsert)
    {
        string cust=trigger.new[0].Customer_Email__c;
        string cstmName=trigger.new[0].Customer_Name__c;
        string menu=trigger.new[0].Menu__c;
		decimal quantity=trigger.new[0].Quantity__c;
        decimal Amount=trigger.new[0].Total_Amount__c;
       EmailManager.sendmail(cust,'New Order Generated',cstmName+ 'Menu:'+menu+ 'Total Quantity:' +quantity+'Total Amount:' +Amount);
        
    }

}