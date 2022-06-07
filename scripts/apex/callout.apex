HttpRequest req = new HttpRequest();
req.setEndpoint('callout:CoinDesk/v1/bpi/currentprice.json');
req.setMethod('GET');
Http http = new Http();
HTTPResponse res = http.send(req);
System.debug(res.getBody());
// Deserialize the JSON string into collections of primitive data types.
Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(res.getBody());
Map<String, Object> currencies = (Map<String, Object>) results.get('bpi');
Map<String, Object> uscurrency = (Map<String, Object>) currencies.get('USD');
system.debug(uscurrency);
system.debug('Bitcoin Current rate in USD : ' + uscurrency.get('rate'));
