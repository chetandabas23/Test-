public class discountOnBooks 
{
	public static void discountbook(Book__c[] book)
    {
        for(Book__c bk:book)
        {
            bk.Price__c*=0.9;
        }
    }
}