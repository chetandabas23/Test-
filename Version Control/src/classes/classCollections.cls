public class classCollections
{
	public void collectmethod()
    {
        List<String> colors=new list<string>();
        String[] colorful=new list <String>{'orange','black','yellow'};
            integer[] arr=new integer[]{2,3,4,5,6};
                colors.add('red');
        colors.add('white');
        system.debug(arr);
        system.debug(colors);
        system.debug(colorful);
        string color1=colors[0];
        string color2=colorful[0];
        system.debug(color2);
        for(integer i=0;i<colors.size();i++)
        {
            system.debug(colors.get(i));
        }
        for(integer i=0;i<colorful.size();i++)
        {
            System.debug('position' +i + 'value:' +colorful[i]);
        }
    }
}