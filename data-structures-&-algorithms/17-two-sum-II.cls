/**
 Given a list of integers that are sorted in ascending order, return the indices of the two 
 numbers that add up to a target value.

 Constraints:

    Each problem will have only one solution if any. You may return null or an empty list of
    no solution is found.
    You should attempt to solve this in constant space and linear run-time. This means a solution 
    using nested loops or a Map will not work.
    Inputs can contain up two 10,000 values

    Example 1
    Input: prices = [2,7,11,15], target = 9
    Output: [0, 1], because the sum of 2 and 7 is 9.
    Example 2
    Input: [4, 8, 10, 22], target = 30
    Output: [1, 3] because the sum of 8 and 22 is 30
 */

public class Solution {
    public List<Integer> twoSum(List<Integer> nums, Integer target){
        List<Integer> result = new List<Integer>();
        Integer i = 0;
        Integer j = nums.size() - 1;
    
        while(i < j){
            Integer sum = nums.get(i) + nums.get(j);
    
            if(sum == target){
                result.add(i);
                result.add(j);
                break; 
            }
    
            if(sum > target) {
                j --;
            } else {
                i ++;
            }
            
        }
    
        return result;    
    }
}