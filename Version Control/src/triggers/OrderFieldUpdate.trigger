trigger OrderFieldUpdate on Order__c (before insert)
{
    list<Product__c> pro=new list<Product__c>();
    if(Trigger.isinsert)
    {
        list<Product__c> prod=new list<Product__c>();
        for(order__c o:Trigger.new)
        {
            prod.add([select id,name,placed_order__c from product__c where id =:o.Products__c]);
        }
        for(Product__c p1:prod)
        {
            for(Order__c o1:Trigger.new)
            {
                if(p1.id==o1.Products__c)
                {
                    p1.Placed_Order__c=p1.Placed_Order__c+o1.order_placed__c;
                    pro.add(p1);
                }
            }
        }
    }
	update pro;
}