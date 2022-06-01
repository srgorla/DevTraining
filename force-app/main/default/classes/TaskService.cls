public with sharing class TaskService {
    public static void updateContactLastTouchedDate(List<Task> tasks){
        Set<Id> contactSet = new Set<Id>();
        for(Task t: tasks){
            if(t.WhoId != null && t.Status == 'Completed'){
                contactSet.add(t.WhoId);
            }
        }    
        if(!contactSet.isEmpty()){//Make sure there are records to be updated
            //Map<Id,Contact> contactMap = new Map<Id,Contact>([SELECT Id, AccountId FROM Contact where Id in (:contactSet) ]);
            List<Contact> contactsWithPastTouchedDate = [ SELECT Id, Last_Completed_Task_Date__c, AccountId FROM Contact where Id in :contactSet AND ( Last_Completed_Task_Date__c < :Date.today() OR Last_Completed_Task_Date__c = null )  ];
            system.debug('Contacts to update size ' + contactsWithPastTouchedDate.size());
            if(!contactsWithPastTouchedDate.isEmpty()){
                for(Contact c : contactsWithPastTouchedDate){
                    c.Last_Completed_Task_Date__c = Date.today();
                }
                update contactsWithPastTouchedDate;
            }
        }
    }
}
