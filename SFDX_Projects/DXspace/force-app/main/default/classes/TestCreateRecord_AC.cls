@isTest
public class TestCreateRecord_AC
{
    static testmethod void testdata()
    {
        Boolean success = true;
        try{
       CreateRecord_AC crac = new CreateRecord_AC();
       crac.insertRecord('Samplename', 'sampleDescription data');
        }
        catch(Exception e)
        {
            success = false;               
        }
       finally {
	        System.assert(success);
        }
    }

}