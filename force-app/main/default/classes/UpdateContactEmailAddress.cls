public with sharing class UpdateContactEmailAddress {
    public  void   updateEmail(){
        List<Contact> dummyEmailContacts = new List<Contact>();
        dummyEmailContacts = [ SELECT firstname, lastname, email FROM Contact where  email  != null AND  (NOT  (Email Like 'Dummy%')) WITH SECURITY_ENFORCED ];
        for(Contact con : dummyEmailContacts){
            //if(con.email != null){
            con.Email = 'Dummy' + con.Email  ;
            //}
        }
        update dummyEmailContacts;
    }

}
