/*
Given two strings firstName and lastName, return the name in the format LastName, 
FirstName. In case one of the names is null or empty, return only the non-empty 
part of the name. If both are null or empty, return an empty string.

formatName('Jane', 'Doe') = 'Doe, Jane'

formatName('Jane', '') = 'Jane'
*/

public class Result {
    public String formatName(String firstName, String lastName) {
        String first = String.isEmpty(firstName) ? '' : firstName;
        String last = String.isEmpty(lastName) ? '' : lastName;
    
        if(last != '' && first != '') return last + ', ' + first;
        return first + last;
    }
}