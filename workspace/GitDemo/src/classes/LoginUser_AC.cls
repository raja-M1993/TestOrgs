public class LoginUser_AC 
{
    public String username{get; set;}
    public String password{get; set;}

    public PageReference getUserDetails()
    {
        PageReference retURL;
        System.debug(username+' '+password);
        List<UserDetail__c> userdetail=[select id,name,username__c,Passwordd__c from UserDetail__c];
        for(UserDetail__c validate :  userdetail)
        {
            if(validate.username__c == username && validate.Passwordd__c == password)
            {
                retURL = new PageReference('https://c.ap4.visual.force.com/apex/LoginUserDetail_VF?id='+validate.Id);
                
              //Cache.Session.put('Login user',validate.username__c);
                
                retURL.setRedirect(true);
                
                //       ApexPages.addmessage(new ApexPages.message(ApexPages.Severity.INFO,'welcome '+validate.name));
            }
            else if(username=='Admin' && password =='Admin123')
            {
                 retURL = new PageReference('https://c.ap4.visual.force.com/apex/UsersList_VF');
                                            retURL.setRedirect(true);
            }
            else if((validate.username__c != username || validate.Passwordd__c != password))
            {
                ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'username and passsword error'));
            }
            else
                
            {
                ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'Enter the correct username and passsword!'));
                
            }
            
        }
        return retURL;
    }
    public void init()
    {
        Cache.Session.put('session_value', Userinfo.getSessionId());
    }
    
}