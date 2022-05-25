//Maps
//https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_collections_maps.htm

//A map is a collection of key-value pairs where each unique key maps to a single value.
// Keys and values can be any data type—primitive types, collections, sObjects, user-defined types, and built-in Apex types.


Map<String, String> country_currencies = new Map<String, String>();
country_currencies.put('India', 'Rupee');
country_currencies.put('United States', 'Dollar');
country_currencies.put('Japan', 'Yen');


system.debug('country_currencies map : ' + country_currencies);
//Get all keys 
system.debug(country_currencies.keySet());
//Get all values 
system.debug(country_currencies.values());
// Get value for a particular key
system.debug(country_currencies.get('India'));


Map<String, String> MyStrings = new Map<String, String>{'a' => 'b', 'c' => 'd'.toUpperCase()};


Map<Integer, String> m = new Map<Integer, String>(); // Define a new map
m.put(1, 'First entry');                  // Insert a new key-value pair in the map
m.put(2, 'Second entry');                  // Insert a new key-value pair in the map
System.assert(m.containsKey(1));  // Assert that the map contains a key
String value = m.get(2);               // Retrieve a value, given a particular key
System.assertEquals('Second entry', value);
Set<Integer> s = m.keySet();       // Return a set that contains all of the keys in the map





