trigger ContactRollUpTrigger on Contact (after delete,after insert,after undelete,after update)
{
     Set<Id> setAccountIds = new Set<Id>();
  
  //Whenever your working with After Undelete operation you can access data through 
  //Trigger.new or Trigger.newMap but not with Trigger.old or Trigger.oldmap variables
  if(Trigger.isInsert || Trigger.isUndelete || Trigger.isUpdate)
  {
   for(Contact con : Trigger.new)
   {
    setAccountIds.add(con.AccountId);
   }
  }
  
  if(Trigger.isDelete || Trigger.isUpdate)
  {
   //if you use Trigger.new below in place of Trigger.old you will end up with 
   //System.NullPointerException:Attempt to de-reference a null object
   for(Contact con : Trigger.old) 
   {
    setAccountIds.add(con.AccountId);
   }
  }
  
 List<Account> listAccs = [Select id,name,number_of_contacts__c ,(Select id from contacts) from Account where Id in : setAccountIds];
  for(Account acc :listAccs)
  {
   acc.number_of_contacts__c = acc.contacts.size();
  }
  update listAccs;
}