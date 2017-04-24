public class CreateRecord_AC {
    TestObject__c to = new TestObject__c();
    public void insertRecord(String name,String Description)
    {
        Date dateoftoday =date.today();        
       to.Name=name;
        to.Description__c=Description;
        to.record_created_date__c=dateoftoday;
        insert to;
    }

}