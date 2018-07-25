public class SendEmailToOwner
{
    public account acc{get;set;}
    
    public SendEmailToOwner(ApexPages.StandardController controller)
    {
         //this.acc = (Account)stdController.getRecord()
         Id CustNo = controller.getRecord().Id;
         system.debug(CustNo);
         acc=[SELECT Name,OwnerId,Owner.Email,Owner.Name FROM Account where id=:CustNo];
         EmailTemplate et = [SELECT Id, Body FROM EmailTemplate WHERE Name like 'send mail'];
         system.debug(et);
		 //List<string> toAddress = new List<string>();
		 //toAddress.add(primaryEmail);
         List<string> toAddress=new List<string>();
         toAddress.add(acc.Owner.Email);
        
         system.debug(toAddress);
         Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
         //mail.setTargetObjectIds('0016F00002K870F');
         mail.setSenderDisplayName('System Admin');
         //mail.setTemplateId(et.id);
         mail.setPlainTextBody(et.Body);
         mail.setToAddresses(toAddress);
         System.debug('mail = '+mail);
         try{
            System.debug('Before Mail');
         Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
            System.debug('After Mail');
        }catch(Exception ex)
        {
            System.debug('ex ===== ' +ex.getMessage());
        }
    }
    
}