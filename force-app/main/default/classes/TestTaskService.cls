@isTest
public with sharing class TestTaskService {
    @testSetup static void setup(){
        task t = TestingUtils.createTask();
        insert t;
    }
    
    @isTest
    public static void LastTaskCompleteDateShouldbeEmpty() {
        Contact cont = [ SELECT id, Last_Completed_Task_Date__c from Contact Limit 1];
        Task taskb4StatusUpdate = [ SELECT id, Status from Task Limit 1];
        System.assertEquals(null, cont.Last_Completed_Task_Date__c, 'Last Completed task Date should be empty');
    }
    @isTest
    public static void LastTaskCompleteDateShouldbeSetToToday() {
        Contact cont = [ SELECT id, Last_Completed_Task_Date__c from Contact Limit 1];
        Task taskb4StatusUpdate = [ SELECT id, WhoId, Status from Task Limit 1];
        Test.startTest();
        taskb4StatusUpdate.status = 'Completed';
        update taskb4StatusUpdate;
        Test.stopTest();
        Contact contAfterupUpdate = [ SELECT id, Last_Completed_Task_Date__c from Contact Limit 1];
        System.assertEquals(Date.today(), contAfterupUpdate.Last_Completed_Task_Date__c, 'Last Completed task Date should be set to Today');
    }    
}
