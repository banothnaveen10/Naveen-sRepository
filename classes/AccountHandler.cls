public class AccountHandler {
    public static void createAccount(String accName, String accType) {
        Account newAcc = new Account(Name = accName, Type = accType);
        insert newAcc;
    }

    public static void updateAccount(Account accToUpdate) {
        update accToUpdate;
    }

    public static void deleteAccount(Account accToDelete) {
        delete accToDelete;
    }
}