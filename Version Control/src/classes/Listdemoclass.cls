public class Listdemoclass {
            public void addelements()
        {
            list<integer> listint=new list<integer>();
            listint.add(1);//add method without index
            listint.add(0,2);//add method with index
			system.debug(listint);
            for(integer i:listint)//advance loop for collections
            {
                system.debug(i);
            }
            for(integer i=0;i<listint.size();i++)//normal for loop
            {
                system.debug('posiyion'+i+'-value:'+listint.get(i));//get method to get the value     
            }
            listint.remove(1);//to remove from a particular index
            for(integer i=0;i<listint.size();i++)
            {
                system.debug('position'+i+'-value:'+listint.get(i));
            }
            listint.set(0,7);//to replace a value
            system.debug(listint);
            listint.clear();
            system.debug(listint);
        }
    }