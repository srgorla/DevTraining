public with sharing class ContactBatch implements Database.Batchable<sObject>, Schedulable {

    public Database.QueryLocator start(Database.BatchableContext BC) {

        Date today = Date.today(); // We can not pass runtime calculation inside the query string as system will throw exception
        String query = 'SELECT Id, Last_Completed_Task_Date__c, AccountId FROM Contact where  Last_Completed_Task_Date__c < :today or Last_Completed_Task_Date__c = null  WITH SECURITY_ENFORCED';
        return Database.getQueryLocator(query);
    }
    

    public void execute(Database.BatchableContext BC, List<sObject> scope){
        List<Contact> contactList = (List<Contact>)scope; //typecasting
        ContactService.lastCompletedTaskDate(contactList);
    }     
    
    public  void execute(SchedulableContext sc){
        Database.executeBatch(new ContactBatch());
    }

  
    public void finish(Database.BatchableContext BC){
      
    }   
}
