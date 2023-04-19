/**
 Implement the method divide which takes two integers a and b as input, divides a by b 
 using the / operator, and returns the result. If any exception occurs, the method should 
 return the exception message.

 Given the following test code:
 String result = divide(10,0);
 result should be 'Divide by 0';

 Given the following test code:
 String result = divide(100, 18);
 result should be '5';. The result of integer division 100/19 is 5 with a remainder of 10.
 */

public class Solution{
    public String divide(Integer a, Integer b){
        try{
            return String.valueof(a / b);
        } catch(Exception e){
            return e.getMessage();
        }
    }
}