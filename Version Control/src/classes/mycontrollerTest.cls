@isTest
Public class mycontrollerTest 
{
	Static testMethod void UnitTest()
	{
		Test.startTest();
		opportunity opp=new opportunity();
		opp.Name='Sample';
		opp.Type=' New Customer';
		opp.LeadSource='Phone Inquiry';
        opp.stagename='Prospecting';
        opp.CloseDate= date.Today() + 30;
		insert opp;
		PageReference testPage=new pagereference('/apex/myControllerPage');
		ApexPages.currentPage().getParameters().put('id', opp.id );
		mycontroller TestObj=new mycontroller();
		PageReference pageref=TestObj.save();
		TestObj.getopp();
		Test.stopTest();
	}
}