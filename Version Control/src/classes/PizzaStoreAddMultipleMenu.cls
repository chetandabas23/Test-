public class PizzaStoreAddMultipleMenu
{
    Menu__c mn=new menu__c();
    public list<menu__c> listmenu{get;set;}
    public PizzaStoreAddMultipleMenu()
    {
        listmenu=new list<menu__c>();
        listmenu.add(mn);
    }
    public void addmenu()
    {
        menu__c mn1=new menu__c();
        listmenu.add(mn1);
    }
    public pagereference savemenu()
    {
        insert listmenu;
        pagereference pr1=new pagereference('/apex/PizzaStoreAddMultipleMenuButtons');
        return pr1;
    }
  
}