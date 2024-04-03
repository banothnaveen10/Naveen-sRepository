public class ContactHandler {
    public static void createContact(String firstName, String lastName, String email) {
        Contact newContact = new Contact(FirstName = firstName, LastName = lastName, Email = email);
        insert newContact;
    }

    public static void updateContact(Contact contactToUpdate) {
        update contactToUpdate;
    }

    public static void deleteContact(Contact contactToDelete) {
        delete contactToDelete;
    }
}