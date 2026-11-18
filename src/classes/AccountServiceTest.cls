@isTest
private class AccountServiceTest {

    @isTest
    static void testCreateAccount() {

        Test.startTest();
        AccountService.createAccount('Test Account');
        Test.stopTest();

        Account acc = [
            SELECT Id, Name
            FROM Account
            WHERE Name = 'Test Account'
            LIMIT 1
        ];

        System.assertEquals(
            'Test Account',
            acc.Name
        );
    }

    @isTest
    static void testGetAccounts() {

        insert new Account(Name = 'Sample Account');

        Test.startTest();
        List<Account> accounts = AccountService.getAccounts();
        Test.stopTest();

        System.assert(accounts.size() > 0);
    }
}