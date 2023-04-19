/**
 Implement the method convert15to18DigitId() , which accepts a String of length 15 digit 
 and returns a new String with 18 digit salesforce Id. If the input string length is not 
 equal to 15 digits, then return '-1'.

 Given the following test code:
 String fifteenDigit = '0SO90000000PBDu';

 String eighteenDigit = convert15to18DigitId(fifteenDigit);

 eighteenDigit should be equal to '0SO90000000PBDuGAO' 
 */

public class Solution {
    public String convert15to18DigitId(String fifteenDigit)
    {
        if(fifteenDigit == null) return null;
        if(fifteenDigit.length() != 15) return '-1';

        return (Id) fifteenDigit;
    }
}