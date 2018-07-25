public class ClearEverythingInAList 
{
   List<Book__c> book=new List<Book__c>();
    public void updateBook()
    {
        Book__c a=new Book__c(id='a0B7F0000099wGJ',Name='a0B7F0000099wGJ');
        Book__c b=new Book__c(Name='a0B7F0000099wGO',id='a0B7F0000099wGO');
         Book__c c=new Book__c(Name='Albert Pinto',id='a0B7F0000099wGF');
         Book__c d=new Book__c(Name='Albert Pinto',id='a0B7F0000099wGI');
         Book__c e=new Book__c(Name='Albert Pinto',id='a0B7F0000099wGK');
         Book__c f=new Book__c(Name='robert willson',id='a0B7F0000099wGG');
         Book__c g=new Book__c(Name='Stephen Hawking',id='a0B7F0000099wGH');
    
        book=new list<Book__c>{a,b,c,d,e,f,g};
            delete book;
        
    }

}