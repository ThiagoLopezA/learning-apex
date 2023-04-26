/**
Given a list of Integers that can contain positive and negative values and an Integer target, 
calculate the maximum subarray of the length of the target.

Example
Input: nums: [2, 3, -5, 1, 8] and target = 2
Output: 9
The largest continuous subarray is 1 and 8.

Constraints

Your solution should be able to handle data sets up to 5000 members

 */

public class Solution {
    public static Integer maxSubArraySum(List<Integer> nums, Integer target){
        if(target == 1){
            nums.sort();
            return nums.get(nums.size() - 1);
        }
        
        Integer left = 0;
        Integer rigth = 0;
    
        Integer largest = 0;
        Integer current;
    
        for(Integer i = 0; i < nums.size() - 1; i++){
    
            if(rigth < target){
                largest += nums.get(i);
                current = largest;
                rigth++;
            } else {
                current -= nums.get(left);
                current += nums.get(rigth);
    
                rigth++;
                left++;
    
                largest = current > largest ? current : largest;
            }
        }
    
        return largest;
    }
}