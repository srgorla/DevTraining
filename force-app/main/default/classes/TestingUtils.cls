@isTest
public with sharing class TestingUtils {
    public static Contact createContact(){
        return new Contact(
            LastName = 'Spectacular',
            FirstName = String.valueOf(Crypto.getRandomInteger())
        );
    }
    public static Task createTask(){
        Contact Cont = createContact();
        insert cont;
        return new Task(
            whoId = cont.Id, subject = 'test'
        );
    }
}
