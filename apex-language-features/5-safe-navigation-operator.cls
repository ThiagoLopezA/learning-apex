/**
 Implement the method getAccountBillingCityWithSafeNavigation, which accepts 
 a list of accounts as an input and returns the BillingCity in upper case of 
 the first account in the list. Use the Safe Navigation (?.) to ensure null 
 is returned in case the BillingCity is null.

 Given the following test code:
 List<Account> acts = new ListList<Account>();
 acts.add(new Account(Name = 'Acme', BillingCity = 'Chicago'));
 acts.add(new Account(Name = 'Dove', BillingCity = 'Boston'));
 String result = getAccountBillingCityWithSafeNavigation(acts);

 result should be 'CHICAGO'
*/

public class Solution {
    public String getAccountBillingCityWithSafeNavigation(List<Account> accounts){
        String billingCity = accounts[0]?.BillingCity;
     
        if(billingCity != null) return billingCity.toUpperCase();
     
        return null;
     }     
}