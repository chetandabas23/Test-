public class BooksInsertUsingList 
{
    List<Book__c> book=new List<Book__c>();
    public void updateBook()
    {
        Book__c a=new Book__c(Name='Albert Pinto',Price__c=150,Type__c='Fiction',id='a0B7F0000099wGy');
        Book__c b=new Book__c(Name='robert willson',Price__c=120.00,Type__c='Non-Fiction',id='a0B7F0000099wGz');
        Book__c c=new book__c(Name='Stephen Hawking',type__c='None',id='a0B7F0000099wH0');
        Book__c d=new book__c(Name='Albert Pinto',price__c=123 ,Type__c='None',id='a0B7F0000099wH1');
        Book__c e=new Book__c(Name=' ',Price__c=123,Type__c='Fiction',id='a0B7F0000099wH2');
        book=new list<Book__c>{a,b,c,d,e};
            delete book;
        
    }

}