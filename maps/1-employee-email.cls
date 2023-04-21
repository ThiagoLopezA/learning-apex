/**
 Given a string employeeId a map of string to string employeeIdToEmail that contains employee IDs 
 as keys and the employee's email address as the value, return the email associated with the passed 
 employeeId. If the employee ID is not found, return 'info@apexsandbox.io'.

 For example, if the map employeeIdToEmail contains the following keys and values:
 '6752' -> 'cooper@corporation.com'
 '19228' -> 'umair@universalcontainers.com'
 '4823' -> 'alicia@acmeenterprises.com'

 The method call employeeEmail(employeeIdToEmail, '4823') should return 'alicia@acmeenterprises.com'.
*/

public class Result {
    public String employeeEmail(Map<String, String> employeeIdToEmail, String employeeId) {
        String email = employeeIdToEmail.get(employeeId);
    
        if(email == null) return 'info@apexsandbox.io';
    
        return email;
    }
}