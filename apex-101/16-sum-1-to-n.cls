/*
Implement the method sumToN that calculates and returns the sum of all numbers 
(inclusive) from 1 to n. Assume that n will be non-zero positive integer.

sumToN(5) = 15
sumToN(2) = 3
*/

public class Result {
    public Integer sumToN(Integer n) {
        Integer result = 0;
        
        for(Integer i = n; i > 0; i--){
            result += i;
        }
    
        return result;
    }
}