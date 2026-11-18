public with sharing class AccountService {

    public static List<Account> getAccounts() {
        return [
            SELECT Id, Name, Industry
            FROM Account
            LIMIT 10
        ];
    }

    public static void createAccount(String accountName) {
        Account acc = new Account(
            Name = accountName
        );
        insert acc;
    }
}