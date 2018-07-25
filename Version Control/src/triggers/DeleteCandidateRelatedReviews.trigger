trigger DeleteCandidateRelatedReviews on Candidate__c (before delete) 
{
    	list<review__c> ca=[select name,id from review__c where Candidate_name__c =:trigger.old];
	    delete ca;

}