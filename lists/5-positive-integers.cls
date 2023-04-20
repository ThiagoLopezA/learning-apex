/**
A positive integer is defined as an integer greater than zero. Implement the method 
positiveIntegers that takes as input a list of integers numbers, and returns a new 
list with non-positive integers removed.

Example: positiveIntegers(new List {2, -3, 6, 2}) returns a list containing the numbers 
2, 6, 2.
 */

public class Solution {
    public List<Integer> positiveIntegers(List<Integer> numbers) {
        List<Integer> nums = new List<Integer>();
    
        for(Integer num : numbers) {
            if(num > 0) nums.add(num);
        }
    
        return nums;
    }
}