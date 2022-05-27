trigger ContactTrigger on Contact (before insert, after insert,  before update, after update) {
//trigger ContactTrigger on Contact (before insert,   before update ) {
    // use before context for same object record operations  - ex: update email address for contact 
    // use after  context for cross  object record operations - ex: create a task for Contact 
    //UpdateContactEmailAddress uce = new UpdateContactEmailAddress();
    //uce.updateEmail();
    //System.debug('Processing records : ' + Trigger.new);
    if(Trigger.isInsert){// record create     
        if(Trigger.isBefore){
        // use before context for same object record operations               
            System.debug('Context : ' + Trigger.operationType);
            UpdateContactEmailAddress.updateEmail(Trigger.new);

        }
        if(Trigger.isAfter){
        //    for cross  object record operations
            System.debug('Context : ' + Trigger.operationType);
            //You should never update same object fields in after context
            //UpdateContactEmailAddress.updateEmail(Trigger.new);
        }
    }

    if(Trigger.isUpdate){ // record update
        if(Trigger.isBefore){
        // use before context for same object record operations 
            System.debug('Context : ' + Trigger.operationType);
            UpdateContactEmailAddress.updateEmail(Trigger.new);
        }
        if(Trigger.isAfter){
        //    for cross  object record operations
            System.debug('Context : ' + Trigger.operationType);
            //You should never update same object fields in after context
            //UpdateContactEmailAddress.updateEmail(Trigger.new);            
        }
    }    
    /*
    if(Trigger.isInsert && Trigger.isBefore){
        System.debug('Context : ' + Trigger.operationType);
    }
    if(Trigger.isInsert && Trigger.isAfter){
        System.debug('Context : ' + Trigger.operationType);
    }
    if(Trigger.isUpdate){
        System.debug('Context : ' + Trigger.operationType);
    }
    System.debug('Context : ' + Trigger.operationType);
    */
}