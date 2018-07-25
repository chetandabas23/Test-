trigger ProductOrders on Order__c (after insert,before delete) 
{
/*   list<Product__c> por=new list<Product__c>();
   if(Trigger.isInsert)
    {
        list<product__c> prod=new list<product__c>();
        
        for(Order__c p:trigger.new)
        {
        prod.add([select id,Total_Order__c from Product__c where id =:p.Products__c]);
        }
        for(Product__c pc:prod)
        {
            for(order__c o:Trigger.new)
            {
                if(pc.id==o.products__c)
                {
                    pc.Total_Order__c=pc.Total_Order__c-o.order_placed__c;
                    pc.Placed_Order__c=o.order_placed__c;
                    if(pc.Total_Order__c < 0)
                    {
                        pc.Total_Order__c=0;
                    }
                    else
                    {
                    por.add(pc);
                    }
                }
            }
        }
update por;
    }
    list<Product__c> por1=new list<Product__c>();
     if(Trigger.isDelete)
    {
        list<product__c> prd=new list<product__c>();
        
        for(Order__c p1:trigger.old)
        {
        prd.add([select id,Total_Order__c from Product__c where id =:p1.Products__c]);
        }
        for(Product__c pc1:prd)
        {
            for(order__c o1:Trigger.old)
            {
                if(pc1.id==o1.products__c)
                {
                    pc1.Total_Order__c=pc1.Total_Order__c+o1.order_placed__c;
                   
                        pc1.Total_Order__c=0;
                    
                   
                       
                    por1.add(pc1);
                        
                        
                }
            }
        }
        update por1;
    }
    
 */   
}
/*
{
    list<Product__c> por=new list<Product__c>();
   if(Trigger.isInsert)
    {
        list<product__c> prod=new list<product__c>();
        integer a=1;
        for(Order__c p:trigger.new)
        {
        prod.add([select id,Total_Order__c from Product__c where id =:p.Products__c]);
        }
        for(Product__c pc:prod)
        {
            for(order__c o:Trigger.new)
            {
                if(pc.id==o.products__c)
                {
                    pc.Total_Order__c=pc.Total_Order__c+a;
                    por.add(pc);
                }
            }
        }
update por;*/
    
    /*
    list<Product__c> por1=new list<Product__c>();
     if(Trigger.isDelete)
    {
        list<product__c> prd=new list<product__c>();
        integer b=1;
        for(Order__c p1:trigger.old)
        {
        prd.add([select id,Total_Order__c from Product__c where id =:p1.Products__c]);
        }
        for(Product__c pc1:prd)
        {
            for(order__c o1:Trigger.old)
            {
                if(pc1.id==o1.products__c)
                {
                    pc1.Total_Order__c=pc1.Total_Order__c-b;
                    if(pc1.Total_Order__c < 0)
                    {
                        pc1.Total_Order__c=0;
                    }
                    else
                    {
                       
                    por1.add(pc1);
                        
                    }    
                }
            }
        }
        update por1;
    }*/