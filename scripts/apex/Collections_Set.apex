//A set is an unordered collection of elements that do not contain any duplicates. 
//Set elements can be of any data type—primitive types, collections, sObjects, user-defined types, and built-in Apex types.
//https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_collections_sets.htm

/*
//https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_set.htm#apex_System_Set_ctor
Set<T>()
Creates a new instance of the Set class. A set can hold elements of any data type T.
Set<T>(setToCopy)
Creates a new instance of the Set class by copying the elements of the specified set. T is the data type of the elements in both sets and can be any data type.
Set<T>(listToCopy)
Creates a new instance of the Set class by coping the list elements. T is the data type of the elements in the set and list and can be any data type.
*/

List<Contact> dummyEmailContacts = new List<Contact>();
dummyEmailContacts = [ SELECT firstname, lastname, email FROM Contact where  email  != null AND  (NOT  (Email Like 'Dummy%')) WITH SECURITY_ENFORCED ];
Set<Contact> mySet = new Set<Contact>(dummyEmailContacts);
//Set<Contact> mySet2 = [ SELECT firstname, lastname, email FROM Contact where  email  != null AND  (NOT  (Email Like 'Dummy%')) WITH SECURITY_ENFORCED ];
system.debug(mySet);
//List<Contact> myList2 = [SELECT firstname, lastname, email FROM Contact where id in mySet.getKeys()];


List<String> duplicateList = new List<String>{'Yellow','Red','Green', 'Green'};
List<Set>
Set<String> myStringSet = new Set<String>();
// Defines a new set with two elements
Set<String> set1 = new Set<String>{'New York', 'Paris'};


// Define a new set
Set<Integer> mySet = new Set<Integer>();
// Add two elements to the set
mySet.add(1);
mySet.add(3);
system.debug(mySet);
// Assert that the set contains the integer value we added
System.assert(mySet.contains(1)); 
System.assertEquals(mySet.contains(3), true);
// Remove the integer value from the set
mySet.remove(1);


// Define a new set that contains the
// elements of the set created in the previous example
Set<Integer> mySet2 = new Set<Integer>(mySet);
// Assert that the set size equals 1
// Note: The set from the previous example contains only one value
System.assert(mySet2.size() == 1);
