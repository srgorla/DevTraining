public with sharing class ContactService {

    @future
    public  static void   lastCompletedTaskDate(Set<Id> contactSet){
        List<Contact> contactsToUpdate = [ SELECT Id, Last_Completed_Task_Date__c, AccountId FROM Contact where Id in :contactSet AND ( Last_Completed_Task_Date__c < :Date.today() OR Last_Completed_Task_Date__c = null ) WITH SECURITY_ENFORCED ];
            system.debug('Contacts to update size ' + contactsToUpdate.size());
            if(!contactsToUpdate.isEmpty()){
                for(Contact c : contactsToUpdate){
                    c.Last_Completed_Task_Date__c = Date.today();
                }
                update contactsToUpdate;
            }
    }

    public  static void   lastCompletedTaskDate(List<Contact> contactList){

        List<Contact> contactsToUpdate = new List<Contact>();
        Map<Id, Date> contactToLastModifiedDateMap = new Map<Id, Date>();
        Set<Id> contactIdSet = new Set<Id>();
        for(Contact c: contactList){
          contactIdSet.add(c.Id);
        }
        List<Task> taskList = [SELECT Id,WhoId, LastModifiedDate from Task where WhoId IN :contactIdSet and Status = 'Completed' Order by LastModifiedDate desc ];
        for(Task t: taskList){
          if(!contactToLastModifiedDateMap.containsKey(t.WhoId)){
            contactToLastModifiedDateMap.put(t.WhoId, t.LastModifiedDate.date());
          }
        }
        system.debug('contactToLastModifiedDateMap :' + contactToLastModifiedDateMap);
        for(Contact c: contactList){
          if( contactToLastModifiedDateMap.get(c.Id) != null  && ( c.Last_Completed_Task_Date__c == null || c.Last_Completed_Task_Date__c < contactToLastModifiedDateMap.get(c.Id) ) ){
            c.Last_Completed_Task_Date__c = contactToLastModifiedDateMap.get(c.Id);
            contactsToUpdate.add(c);
          }
        }
        if(!contactsToUpdate.isEmpty()){
          system.debug('contactsToUpdate :' + contactsToUpdate);
          system.debug('contactsToUpdate size :' + contactsToUpdate.size());         
          update contactsToUpdate;
        }
    }

    @future
    public  static void   updateEmail(Set<Id> contSetIds){
        List<Contact> contactsToUpdate = [ SELECT firstname, lastname, email FROM Contact where  Id in :contSetIds AND email  != null AND  (NOT  (Email Like 'Dummy%')) WITH SECURITY_ENFORCED ];
        for(Contact con : ContactsToUpdate){
            con.Email = 'Dummy' + con.Email  ;
        }
        update contactsToUpdate;
    }
        
    public void removeDummyEmail(){
        List<Contact> dummyEmailContacts = new List<Contact>();
        dummyEmailContacts = [ SELECT firstname, lastname, email FROM Contact where  Email Like 'Dummy%' WITH SECURITY_ENFORCED ];
        for(Contact con : dummyEmailContacts){
            con.Email =  con.Email.removeStartIgnoreCase('Dummy')  ;
        }
        update dummyEmailContacts;
    }  
}
