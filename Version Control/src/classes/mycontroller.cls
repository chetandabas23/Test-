public class mycontroller 
{
    private final opportunity opp;
    public mycontroller()
    {
        opp=[select id,name,type,leadsource from opportunity where id=:apexpages.currentPage().getparameters().get('id')];
    }
    public opportunity getopp()
    {
        return opp;
    }
    public pagereference save()
    {
        update opp;
		return null;
    }

}