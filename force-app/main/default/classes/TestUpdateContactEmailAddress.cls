@isTest
public with sharing class TestUpdateContactEmailAddress {
    @testSetup static void setup(){
        Contact con = TestingUtils.createContact();
        insert con;
    }

    @isTest
    public static void DummyEmailPrefixTest() {
        Contact cont = [ SELECT id, Email from Contact Limit 1];
        cont.Email = 'Test@test.com';
        //Test.startTest();
        update cont;
        //Test.stopTest();
        Contact contAfterUpdate = [ SELECT id, Email from Contact Limit 1];
        System.assertEquals('dummytest@test.com', contAfterUpdate.email.toLowerCase(), 'Contact Email doest have Dummy prefix');
    }
}
