public class UpdateProductController 
{
    public list<Product__c> prolist=new list<Product__c>();
    public list<SelectOption> listProduct=new list<SelectOption>();
    public string ProName
    {
        get; set;
    }
    public double TotalOrder
    {
        get; set;
    }
    public double unitPrice
    {
        get; set;
    }
    public string optlist
    {
        get; set;
    }
    public list<SelectOption> getlistproduct()
    {
        listproduct.clear();
        prolist=[select name from Product__c];
        for(Product__c pro:prolist)
        {
            listproduct.add(new SelectOption(pro.id,pro.name));
        }
        return listproduct;
    }
    public void updatepro()
    {
        Product__c rec=[select name,Total_Order__c,Unit_Price__c from product__c where id =:optlist];
        proname=rec.name;
        TotalOrder=rec.Total_Order__c;
        unitPrice=rec.Unit_Price__c;
    }
    public pagereference updatepos()
    {
        Product__c p=[select id from Product__c where id =:optlist];
        p.Name=proname;
        p.Total_Order__c=TotalOrder;
        p.Unit_Price__c=unitPrice;
        update p;
        return null;
    }
    public pagereference deletepro()
    {
        Product__c p1=[select id from Product__c where id =:optlist];
        delete p1;
        return null;
    }
}