/**
 Implement the method sameParent that takes as input an account acc, a contact con, 
 and an opportunity opp and returns true if both the opportunity and contact have the 
 given account as the parent.

 Given the following test code:

 Account acc = new Account(Id = '0018c00002CQU9EAAX');
 Contact con = new Contact(AccountId = acc.Id);
 Opportunity opp = new Opportunity(AccountId = acc.Id);

 The method call sameParent(acc, con, opp) returns true because both the contact and the opportunity have the same parent account.
*/

public class Solution {
    public Boolean sameParent(Account acc, Contact con, Opportunity opp) {
        if(con.AccountId == null || opp.AccountId == null || acc.Id == null) return false;
         
         return con.AccountId == opp.AccountId && con.AccountId == acc.Id;
    }
}