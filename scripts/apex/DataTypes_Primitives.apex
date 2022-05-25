//Syntax 
// https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_primitives.htm

//DataType variable  = Assignment ;

//Boolean
Boolean isWinner = true;
system.debug('isWinner : ' + isWinner);

//Date 
//https://developer.salesforce.com/docs/atlas.en-us.238.0.apexref.meta/apexref/apex_methods_system_date.htm

Date myDate = Date.newInstance(1960, 2, 17);
Date newDate = mydate.addDays(2);
system.debug('myDate : ' + myDate);
system.debug('newDate : ' + newDate);
String dayString = myDate.format();
system.debug('dayString : ' + dayString);
Date today = Date.today();
system.debug('tomorrow : ' + today.addDays(1));
system.debug('today : ' + today);
system.debug('tomorrow : ' + Date.today().addDays(1));
system.debug('yesterday : ' + Date.today().addDays(-1));


//Time
//https://developer.salesforce.com/docs/atlas.en-us.238.0.apexref.meta/apexref/apex_methods_system_time.htm
Time myTime = Time.newInstance(1, 2, 3, 4);
Time expected = Time.newInstance(4, 2, 3, 4);
System.assertEquals(expected, myTime.addHours(3));



//DateTime
//https://developer.salesforce.com/docs/atlas.en-us.238.0.apexref.meta/apexref/apex_methods_system_datetime.htm
Long longtime = 1341828183000L;
DateTime dt = DateTime.newInstance(longtime);
DateTime expectedDt = DateTime.newInstance(2012, 7, 09, 5, 3, 3);
System.assertEquals(expectedDt, dt);



DateTime dt1 = DateTime.newInstance(Date.newInstance(2011, 11, 18), Time.newInstance(3, 3, 3, 0));
DateTime expected1 = DateTime.newInstance(2011, 11, 18, 3, 3, 3);
System.debug('dt1 ' + dt1);
System.debug('expected1 ' + expected1);
System.debug('formatted expected1 ' + expected1.format()); // user local time 
system.debug('Current time :' + Datetime.now());
System.debug('formatted Current time ' + Datetime.now().format()); // user local time 
System.debug(DateTime.parse('10/14/2011, 11:46 AM')); //returns in GMT
System.debug(DateTime.parse('10/14/2011, 11:46 AM').format());



system.debug('Current Date time :' + Datetime.now());
system.debug('Current Date time :' + Datetime.now().getTime()); //Returns the number of milliseconds since January 1, 1970, 00:00:00 GMT
system.debug('Current Local time :' + Datetime.now().time()); 
system.debug('Current time in GMT  :' + Datetime.now().timeGmt()); 