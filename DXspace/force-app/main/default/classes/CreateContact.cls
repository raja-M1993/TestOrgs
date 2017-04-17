public class CreateContact 
{
    Contact cnt=new Contact();
      public void createContact(String lastname)
    {
         
        cnt.LastName=lastname;
        insert cnt;
        System.debug('Contact created');
    }
}