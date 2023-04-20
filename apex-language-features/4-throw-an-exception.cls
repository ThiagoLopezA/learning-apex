/**
 Implement the method checkAccounts, which accepts a list of accounts as an input and returns 
 a list of accounts. The method should behave as follows:

 -If all accounts in the list have BillingCity present, the method should return the original 
  list.
 -If the passed list is null the method should throw the built-in IllegalArgumentException with 
  message 'accounts should not be null'
 -If any of the accounts in the list do not have a BillingCity present, the method should throw 
  the custom AccountException exception with message 'Invalid BillingCity'. Do not create new 
  exception class - use the AccountException class that has already been created for you.

 Given the following test code:
 List<Account> accounts = new List<Account>();
 accounts.add(new Account(name ='Salesforce', BillingCity ='Boston'));
 accounts.add(new Account(name ='Microsoft'));

 The method callcheckAccounts(accounts); should fail, throwing an AccountException.
*/

public class Solution {
    public List<Account> checkAccounts(List<Account> accounts)
    {
        if(accounts == null) throw new IllegalArgumentException('accounts should not be null');

        for(Integer i = 0; i < accounts.size(); i++)
        {
            if(accounts[i].BillingCity == null) throw new AccountException('Invalid BillingCity');
        }    
        return accounts;
    }

    //do not remove the following custom-defined exception
    public class AccountException extends Exception {}
}