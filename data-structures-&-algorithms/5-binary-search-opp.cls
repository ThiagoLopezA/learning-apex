/**
 Given a list of opportunities sorted by the Amount field and an Integer target, implement a solution 
 to search the list and return the index of the opportunity with an amount that is equal to the 
 target.

 In the list does not contain a matching value return negative 1.
 Example 1

 input: opportunities = [ {opp1, amount = 100}, {opp2, amount = 200}, {opp3, amount = 300}] target 
 = 200;
 output: 1; this is the index of opportunity with an amount = to the target
 Example 2

 input: opportunities = [ {opp1, amount = 100}, {opp2, amount = 200}, {opp3, amount = 300}] target = 
 500;
 output: -1; The list does not contain a matching value

 Important constraint: A solution that uses a loop to check ALL opportunities will time out. Look for 
 a solution faster than the linear solution.
 */

public class Solution {
    public static Integer search(List<Opportunity> opportunities, Integer target){
        Integer left = 0;
        Integer right = opportunities.size() - 1;
    
        while(left <= right){
            Integer middle = (left + right) / 2;
            Integer value = (Integer) opportunities.get(middle).amount;
            
            if(value == target) return middle;
            if(value > target) {
                right = middle - 1;
            } else {
                left = middle + 1;
            }
        }
    
        return -1;
    }
}