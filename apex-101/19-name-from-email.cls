/**
 Implement a function nameFromEmail that takes as input a valid email address in the 
 format firstname.lastname@example.com. The function should extract the first name 
 and last name from this email address and return a capitalized full name (i.e. 
 FirstName LastName). Assume that the input will always be a valid email address 
 with both the first name and last name separated by a period (.).

 nameFromEmail('john.doe@apexsandbox.io') = 'John Doe'
 nameFromEmail('JANE.DOE@GMAIL.COM') = 'Jane Doe'
*/

public class Result {
    public String nameFromEmail(String email) {
        Integer dotIndex = email.indexOf('.');
        Integer atSingIndex = email.indexOf('@');
    
        String firstName = email.substring(0, dotIndex).toLowerCase();
        String lastName = email.substring(dotIndex + 1, atSingIndex).toLowerCase();
    
        return firstName.capitalize() + ' ' + lastName.capitalize();
    }
}