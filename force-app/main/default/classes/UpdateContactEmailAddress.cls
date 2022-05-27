public with sharing class UpdateContactEmailAddress {
    public  static void   updateEmail(List<Contact> conts){
        //List<Contact> dummyEmailContacts = new List<Contact>();
        //dummyEmailContacts = [ SELECT firstname, lastname, email FROM Contact where  email  != null AND  (NOT  (Email Like 'Dummy%')) WITH SECURITY_ENFORCED ];
        for(Contact con : conts){
            system.debug(con.email);
            if(con.email != null && !con.Email.containsIgnoreCase('Dummy') ){
                con.Email = 'Dummy' + con.Email  ;
                system.debug('at the end');
            }
        }
        //update dummyEmailContacts;
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
