@isTest
private class RN_Test_MultiSelectAutoComplete 
{
	private static testMethod void test() 
	{
	    Account objAccount = new Account(Name = 'Test Account');
	    insert objAccount;
        MultiselectAutocomplete obj = new MultiselectAutocomplete();
        obj.checkOptions();
        RN_MultiselectAutoCompleteCtrl obj1 = new RN_MultiselectAutoCompleteCtrl();
        List<SelectOption> lstAvailableOptions = new List<SelectOption>{
            new SelectOption('Test', 'Test'),
            new SelectOption('Test1', 'Test1')
        };
        obj1.leftOptions = lstAvailableOptions;
        obj1.getMultiselectOptions();
        obj1.assignToSelectedOption();
	}

}