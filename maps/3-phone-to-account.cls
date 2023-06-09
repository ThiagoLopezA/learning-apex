/**
 Implement the method phoneToAccount that takes as input a list of Accounts, and returns a Map 
 containing the phone number as a key and the Account record as the value. Do not include accounts 
 without a phone number.

 For example, given the following accounts:

 a1
 Name: 'Acme Enterprises'
 Phone: '2143452398'

 a2
 Name: 'Universal Containers'
 Phone: '6923849837'

 The method call phoneToAccount(new List {a1, a2}) should return a map containing the following 
 key/value pairs:

 '2143452398' -> a1
 '6923849837' -> a2
*/

public class Solution {
    public Map<String, Account> phoneToAccount(List<Account> accounts) {
        Map<String, Account> result = new Map<String, Account>();
        
        for(Account account : accounts){
            if(account.Phone != null){
                result.put(account.Phone, account);
            }
        }
    
        return result;
    }
}