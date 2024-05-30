public class AccountManager {
    // Method to create a new Account
    public static Id createAccount(String name, String phone) {
        Account acc = new Account(Name = name, Phone = phone);
        insert acc;
        return acc.Id;
    }

    // Method to update an existing Account's phone number
    public static void updateAccountPhone(Id accountId, String newPhone) {
        Account acc = [SELECT Id, Phone FROM Account WHERE Id = :accountId];
        acc.Phone = newPhone;
        update acc;
    }

    // Method to delete an Account by Id
    public static void deleteAccount(Id accountId) {
        Account acc = [SELECT Id FROM Account WHERE Id = :accountId];
        delete acc;
    }

    // Method to get an Account by Id
    public static Account getAccount(Id accountId) {
        return [SELECT Id, Name, Phone FROM Account WHERE Id = :accountId];
    }
}