/**
 Implement the method getAccountsInJSONFormat(), a list of accounts and returns a list 
 of accounts in string JSON format.

 Given the following test code:
 List<Account> accounts = new ListList<Account>();

 accounts.add(new Account(Name = 'Acme', BillingCity = 'Chicago'));
 accounts.add(new Account(Name = 'Dove', BillingCity = 'Boston'));

 String result = getAccountsInJSONFormat(accounts);

 result should be equals to

 '[{"attributes":{"type":"Account"},"Name":"Acme","BillingCity":"Chicago"},
  {"attributes":{"type":"Account"},"Name":"Dove", "BillingCity":"Boston"}]';

 */

public class Solution {
    public String getAccountsInJSONFormat(List<Account> accounts){
        return JSON.serialize(accounts);
    }      
}