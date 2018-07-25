trigger CheckDuplicacy on Practice__c (before insert,before update,before delete,after undelete)
{
   /* List<string> prtc=new list<string>();
    for(Practice__c prc:trigger.new)	
    {
        prtc.add(prc.First_Picklist__c);
    }*/
    list<Practice__c> abc=[select id,name,First_Picklist__c from Practice__c where First_Picklist__c='First'];
    for(practice__c  FirstLoop:trigger.new)
    {
        for(Practice__c secondLoop:abc)
        {
            if(FirstLoop.First_Picklist__c==SecondLoop.First_Picklist__c)
            {
                FirstLoop.addError('Value of First Picklist Cannot be Used Twice');
            }
        }
    }

}