trigger TaskTrigger on Task (after insert,  after update) {
//Update Contact LastTouched date after a task is completed
// Consider the tasks that only have Contact on them (WhoId)
//Consider the tasks that only have Status = 'Completed'
// Update the LastTouchedDate to Today, if not already set , Also consider blank Last Touched Date Contacts 
    System.debug('Context : ' + Trigger.operationType);
    if(!System.isFuture()){
        if( Trigger.isAfter && (Trigger.isInsert || Trigger.isUpdate ) ){
            System.debug('Inside Trigger executable code block   ' + Trigger.operationType);
            TaskService.updateContactLastTouchedDate(Trigger.new);
        }
    }

}