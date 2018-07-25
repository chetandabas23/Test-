trigger CountProductWithOrder on Order__c (before insert)
{
    list<Product__c> pro=new list<Product__c>();
    if(trigger.isinsert)
    {
        list<Product__c> prod=new list<Product__c>();
        for(order__c o:Trigger.new)
        {
            prod.add([select id,Total_Order__c from Product__c where id =:o.Products__c]);
        }
        for(Product__c p1:prod)
        {
            for(Order__c o1:Trigger.new)
            {
                if(p1.id==o1.Products__c)
                {
                    p1.Total_Order__c=p1.Total_Order__c+1;
                    pro.add(p1);
                    }
                }
            }
        }
    update pro;
    
    }