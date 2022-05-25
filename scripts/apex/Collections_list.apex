//Lists
//https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_collections_lists.htm

//A list is an ordered collection of elements that are distinguished by their indices. 
//List elements can be of any data type—primitive types, collections, sObjects, user-defined types, and built-in Apex types.
//List can contain duplicates

// Create an empty list of String
List<String> my_list = new List<String>();

//Define and assign values - same time 
List<String> colors = new List<String>{'Yellow','Red','Green'};
system.debug(colors);
system.debug('First record :' + colors[0] );
colors.sort();
system.debug('after sorting' + colors);
system.debug('after sorting First record :' + colors[0] );
System.debug('after sorting Last record : ' + colors.get(2)); // see the syntax change // last index n-1
//colors.get(colors.size()-1) get nth values
List<String> duplicateList = new List<String>{'Yellow','Red','Green', 'Green'};
system.debug(duplicateList);
//output USER_DEBUG|[2]|DEBUG|(Yellow, Red, Green, Green)

