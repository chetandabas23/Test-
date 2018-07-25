trigger DiscountBooksPrice on Book__c (before insert,before update)
{
	book__c[] book=trigger.new;
    discountOnBooks.discountbook(book);
}