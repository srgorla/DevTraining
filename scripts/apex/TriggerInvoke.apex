Contact cont1 = new Contact( LastName = 'One', Email = 'one1@email.com');
//insert cont1;

Contact cont2 = new Contact( LastName = 'Two', Email = 'two2@email.com');
//insert cont2;
List<Contact> conts = new List<Contact>();
conts.add(cont1);
conts.add(cont2);
insert conts;