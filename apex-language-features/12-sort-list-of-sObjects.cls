/**
 Implement the method getAccounts(), function, which accepts a list of accounts as input and 
 returns a new list of accounts sorted in descending order based on the Annual Revenue field.

 Given the following test code:

 List<Account> accounts = new List<Account>();

 accounts.add(new Account(Name='Accenture', AnnualRevenue = 30));

 accounts.add(new Account(Name='TCS',AnnualRevenue = 10));

 accounts.add( new Account( Name='Apple', AnnualRevenue = 100) );

 List<Account> result = getAccounts(accounts);

 result = (Account:{Name=Apple, AnnualRevenue=100}, Account:{Name=Accenture, AnnualRevenue=30},
 Account:{Name=TCS, AnnualRevenue=10}) 
*/

public class Solution {
    public List<Account> getAccounts(List<Account> accounts) {
        if(accounts == null) return null;
    
        List<AccountWrapper> wrappedAccounts = new List<AccountWrapper>();
    
        for(Account acc : accounts) {
            wrappedAccounts.add(new AccountWrapper(acc));
        }
    
        wrappedAccounts.sort();
    
        List<Account> sortedAccounts = new List<Account>();
    
        for(AccountWrapper accWrapper : wrappedAccounts){
            sortedAccounts.add(accWrapper.account);
        }
    
        return sortedAccounts;
    }
    
    public class AccountWrapper implements Comparable {
        public Account account;
    
        public AccountWrapper(Account acc){
            this.account = acc;
        }
    
        public Integer compareTo(Object other){
            AccountWrapper otherWrapper = (AccountWrapper) other;
            return  (Integer)(otherWrapper.account.AnnualRevenue - account.AnnualRevenue);
        }
    }
    
}