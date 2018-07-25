trigger ProductDuplicacy on Product__c (before insert)
{
    list<string> pro=new list<string>();
    for(Product__c pr1:Trigger.new)
    {
        pro.add(pr1.name);
    }

    list<Product__c> prd=[select id,name from product__c where name=:pro];
    for(Product__c pr:Trigger.new)
    {
        for(Product__c prduct:prd)
        {
            if(pr.name==prduct.name)
            {
                pr.addError('Duplicacy not allowed');
            }
        }
    }

}