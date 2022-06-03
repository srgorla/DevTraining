//fire batch job 
Database.executeBatch(new ContactBatch());

Database.executeBatch(new ContactBatch(), 2);


// Schedule batch 
System.scheduleBatch(new ContactBatch(), 'Schedule Contact Last Touch Date Update', 1);

//queueable apex 
List<contact> conts = [SELECT Id, Last_Completed_Task_Date__c FROM Contact where  Last_Completed_Task_Date__c = null or Last_Completed_Task_Date__c < TODAY];
ID jobID = System.enqueueJob(new ContactQueueable(conts));
system.debug(jobID);


//Reset the data 
List<contact> conts = [SELECT Id, name, Last_Completed_Task_Date__c FROM Contact where  Last_Completed_Task_Date__c != null];
for(contact c : conts){
    c.Last_Completed_Task_Date__c = null;
}
update conts;