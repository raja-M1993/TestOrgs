@isTest
public class TestContact {

    static testmethod  void testmycontact()
    {
        CreateContact cc=new CreateContact();
       // cc.lastname='Raja M';
        cc.createContact('Raja M');
            System.debug('Contact Created Successfully');
    }
}