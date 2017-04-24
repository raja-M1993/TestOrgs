public class LoginClass_AC
{
    public String username{get;set;}
    public String password{get;set;}
	 PageReference welcomepage;
    public PageReference checklogin()
    {
      if(username == 'raja' && password == 'admin')
        {
            welcomepage= new PageReference('https://agility-agility-7016-dev-ed--c.cs70.visual.force.com/apex/Welcomepage_VF');
            welcomepage.setRedirect(true);
        }
        else
        {
            ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.WARNING,'Invalid username and password'));
        }
        return welcomepage;
        
    }
    
	
}