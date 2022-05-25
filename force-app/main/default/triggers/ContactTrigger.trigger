trigger ContactTrigger on Contact (before insert) {
    UpdateContactEmailAddress uce = new UpdateContactEmailAddress();
    uce.updateEmail();
}