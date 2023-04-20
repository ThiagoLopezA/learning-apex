/**
 Implement the method getAccountsFromJSONString, which takes a JSON string of a list 
 of accounts as an input and returns a list of accounts. If the input string is empty 
 or null, return null.

 Given the following test code:

 String inputJSON = '[
 {
 "attributes":
  {
    "type":"Account",
    "url":"/services/data/v55.0/sobjects/Account/00158000002zBhUAAU"},
    "Id":"00158000002zBhUAAU","Name":"Customer1"},{"attributes":{"type":"Account",
    "url":"/services/data/v55.0/sobjects/Account/00158000002zBhWAAU"},
    "Id":"00158000002zBhWAAU","Name":"Customer2"
  }
]';

List<Account> result = getAccountsFromJSONString(inputJSON);

accounts.add(new Account(Name = 'Dove', BillingCity = 'Boston'));

result should be list of accounts (Account:{Id=00158000002zBhUAAU, Name=Customer1},
Account:{Id=00158000002zBhWAAU, Name=Customer2})
*/

public class Solution {
    public List<Account> getAccountsFromJSONString(String inputJSON){
        if(inputJSON == null || inputJSON.length() == 0) return null;
        
        List<Account> accounts = (List<Account>) JSON.deserialize(inputJSON, List<Account>.class);
        
        return accounts;
    }
}