public class collectiontype 
{
	public void CTypeset()
    {
        set<string> s=new set<String>{'a','b','c'};
            s.add('c');
        s.add('f');
        s.add('D');
        s.add('C');
        s.add('d');
        if(s.contains('b'))
        {
            system.debug('I contains b and have size'+s.size());
        }
        system.debug(s);
    }
    public void cTypeMap()
    {
        map<Integer,String> EmpAdd=new Map<integer,string>();
        EmpAdd.put(1,'delhi');
        EmpAdd.put(2,'noida');
        EmpAdd.put(7,'chd');
        System.debug('Address of Employee 2:'+EmpAdd.get(2));
        Map<String,String> myStrings=new map<String,String>
        {
            'a'=>'apple','b'=>'bee'
        };
            system.debug(myStrings.get('a'));
        system.debug(EmpAdd);
        }
}