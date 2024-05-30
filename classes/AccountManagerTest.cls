@IsTest
private class AccountManagerTest {
    @IsTest
    static void testCreateAccount() {
        // Test data
        String accName = 'Test Account';
        String accPhone = '1234567890';
        
        // Call method
        Id accId = AccountManager.createAccount(accName, accPhone);
        
        // Verify result
        Account acc = [SELECT Id, Name, Phone FROM Account WHERE Id = :accId];
        System.assertEquals(accName, acc.Name);
        System.assertEquals(accPhone, acc.Phone);
    }

    @IsTest
    static void testUpdateAccountPhone() {
        // Test data
        String accName = 'Test Account';
        String initialPhone = '1234567890';
        String newPhone = '0987654321';
        
        // Create account
        Id accId = AccountManager.createAccount(accName, initialPhone);
        
        // Update phone number
        AccountManager.updateAccountPhone(accId, newPhone);
        
        // Verify result
        Account acc = [SELECT Id, Phone FROM Account WHERE Id = :accId];
        System.assertEquals(newPhone, acc.Phone);
    }

    @IsTest
    static void testDeleteAccount() {
        // Test data
        String accName = 'Test Account';
        String accPhone = '1234567890';
        
        // Create account
        Id accId = AccountManager.createAccount(accName, accPhone);
        
        // Delete account
        AccountManager.deleteAccount(accId);
        
        // Verify result
        Account[] accList = [SELECT Id FROM Account WHERE Id = :accId];
        System.assertEquals(0, accList.size());
    }

    @IsTest
    static void testGetAccount() {
        // Test data
        String accName = 'Test Account';
        String accPhone = '1234567890';
        
        // Create account
        Id accId = AccountManager.createAccount(accName, accPhone);
        
        // Get account
        Account acc = AccountManager.getAccount(accId);
        
        // Verify result
        System.assertEquals(accName, acc.Name);
        System.assertEquals(accPhone, acc.Phone);
    }
}