trigger PositionDuplicacy on Position__c (before insert)
{
    List<string> names=new list<string>();
    for(Position__c p1:Trigger.new)
        names.add(p1.name);
    List<Position__c> pL=[select name from Position__c where name in:names];
    for(Position__c p2:Trigger.new)
    {
        for(Position__c p3:pL)
        {
            if(p3.name==p2.name)
                p2.Name.addError('Duplicate Position');
         
            
            p2.addError('Duplicate Positions');
        }
    }

}