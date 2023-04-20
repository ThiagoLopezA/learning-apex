/**
 Implement the method arraySum that takes as input a non-empty list of Integers numbers, 
 and returns the sum of all numbers in the list.

 Example: arraySum(new List {5, 2, 3}) evaluates to 10.
*/

public class Solution {
    public static Integer arraySum(List<Integer> numbers) {
        Integer result = 0;
    
        for(Integer numb : numbers) result += numb;
    
        return result;
    }
}