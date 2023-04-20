/**
 Implement the method getFieldsValue, which accepts the following inputs:

 -An account acc
 -A list of strings fields, with each string in the list representing a valid field on the account 
  object.

 The method should return a list of values from the account record for fields listed in the list 
 fields in the correct order.
 Given the following test code:

 Account acc = new Account(
     Name = 'Salesforce', 
     BillingCity = 'Boston', 
     AnnualRevenue=10000, Rating='Hot'
 );
 List fields = new List{'Industry','Name','Rating'};
 List result = getFieldsValue(acc, fields);

 result should be [null, 'Salesforce', 'Hot']
 */


public class Solution {
    public List<String> getFieldsValue(Account acc, List<String> fields)
    {
        List<String> response = new List<String>();

        for(String field : fields){
            String value = String.valueOf(acc.get(field));
            response.add(value);
        }
    return response;
    }
}