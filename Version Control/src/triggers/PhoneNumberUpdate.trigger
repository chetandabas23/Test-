trigger PhoneNumberUpdate on Contact (before insert,before Update) {
/*    List<string> s1=new list<string>();
    for(contact c1:Trigger.new)
    {
        s1.add(c1.accountid);
    }
    List<Account> acc=[select id from account where id in:s1];
    list<account> ins=new list<account>();
    for(account x:acc)
    {
        for(contact c:Trigger.new)
        {
            if(x.id==c.accountid)
            {
                x.phone=c.phone;
                ins.add(x);
            }
        }
    }
update ins;*/
}