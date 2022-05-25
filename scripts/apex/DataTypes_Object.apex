Object obj = 10;
// Cast the object to an integer.
Integer i = (Integer)obj;//typecasting
system.debug(i);
System.assertEquals(10, i);


Object obj_cls = new UpdateContactEmailAddress();
// Cast the object to the MyApexClass custom type.
UpdateContactEmailAddress mc = (UpdateContactEmailAddress)obj_cls;
// Access a method on the user-defined class.
mc.updateEmail();

//Sobject 
// https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_sobject.htm#apex_System_SObject_methods
SObject sobj = [ Select Name from Account LIMIT 1];
Account acc = (Account)sobj ;
