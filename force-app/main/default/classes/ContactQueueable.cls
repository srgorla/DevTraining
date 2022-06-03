public with sharing class ContactQueueable implements  Queueable{
    public List<Contact> queueablecontactList ;
    public ContactQueueable(List<Contact> conts) {
        this.queueablecontactList = conts;
    }

    public void execute(QueueableContext context) {
        ContactService.lastCompletedTaskDate(queueablecontactList);     
    }  
}
