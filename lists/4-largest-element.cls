/**
 Implement the method findLargest that takes as input a non-empty list of Integers nums, 
 and returns the largest Integer in the list.

 Example: findLargest(new List {5, 2, 8, 4, 2, 1}) evaluates to 8 because 8 is the largest 
 Integer in the list.
*/

public class Solution {
    public static Integer findLargest(List<Integer> nums) {
        Integer largest = nums.get(0);
    
        for(Integer i = 1; i < nums.size(); i++){
            if(nums.get(i) > largest) largest = nums.get(i);
        }
    
        return largest;
    }
}