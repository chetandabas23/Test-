public class Stringcheck1 
{
    public void stringmethod()
    {
        string a1='My Name is Chetan';
        string a2='my name is chetaN';
        string a3='Hello world';
        System.debug(a1==a2);
        system.debug(a2!=a3);
        system.debug(a1.endswith('n'));
        System.debug(a1.endswith('N'));
        System.debug(a2.startswith('m'));
        System.debug(a2.startswith('M'));
        System.debug(a3.abbreviate(10));
        
        
    }

}