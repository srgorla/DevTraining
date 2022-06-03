public with sharing class TaskService {
    public static void updateContactLastTouchedDate(List<Task> tasks){
        Set<Id> contactSet = new Set<Id>();
        for(Task t: tasks){
            if(t.WhoId != null && t.Status == 'Completed'){
                contactSet.add(t.WhoId);
            }
        }

        if(!contactSet.isEmpty()){//Make sure there are records to be updated
            
            //ContactService.lastCompletedTaskDate(contactSet);//Future method

            List<contact> conts = [Select Id, Last_Completed_Task_Date__c from contact where id IN :contactSet]; //Queueable Apex 
            ID jobID = System.enqueueJob(new ContactQueueable(conts));
            system.debug(jobID);            
        }

    }
}
