public class MultiselectAutocomplete
{
    public List<SelectOption> lstAvailableOptions {get;set;}
    public List<SelectOption> lstSelectedOptions {get;set;}

    public MultiselectAutocomplete()
    {
        lstAvailableOptions = new List<SelectOption>();
        lstSelectedOptions = new List<SelectOption>();
        for(Account objAccount:[SELECT Id, Name FROM Account])
        {
            lstAvailableOptions.add(new SelectOption(objAccount.Id, objAccount.Name));
        }
    }

    public void checkOptions()
    {
        system.debug('====lstSelectedOptions==='+lstSelectedOptions);
    }
    
}