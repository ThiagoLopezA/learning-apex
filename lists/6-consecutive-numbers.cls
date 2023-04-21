/**
    Given a List of Integers containing only binary numbers (0 and 1), return the maximum number of 
    consecutive 1s appearing in the List.
    
    Example : Input: [1,1,0,1,1,1,1] Output: 4. The array has 2 consecutive 1s starting index 0, and 
    4 consecutive 1s starting index 3. 
*/

public class Solution {
    public Integer maxConsecutiveOnes(Integer[] numbers) {
        Integer maxCount = 0;
        Integer currentCount = 0;
            for (Integer num : numbers) {
                if (num == 1) {
                    currentCount++;
                    maxCount = Math.max(maxCount, currentCount);
                } else {
                    currentCount = 0;
                }
            }
        return maxCount;
    }
}