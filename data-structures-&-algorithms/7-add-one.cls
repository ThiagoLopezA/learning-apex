/**
 A large integer number is given as a List of Integers from 0 to 9. You have to add 
 1 to that number and modify the list to represent the resulting number.

 Example 1:

 Input: number = [1,2,3]

 Output: [1,2,4]

 Explanation: The array represents the integer 123.

 Incrementing by one gives 123 + 1 = 124.

 Thus, the result should be [1,2,4].

 Example 2:

 Input: number = [9]

 Output: [1,0]

 Explanation: The array represents the integer 9.

 Incrementing by one gives 9 + 1 = 10.

 Thus, the result should be [1,0].
 */

public class Solution {
    public void plusOne(List<Integer> numbers) {
        Boolean flag = true;
        Integer position = numbers.size() - 1;
    
        while(flag){
            Integer item = numbers.get(position);
            
            if(item < 9) {
                numbers.set(position, item + 1);
                flag = false;
                break;
            } 
    
            numbers.set(position, 0);
            
            if(position == 0){
                numbers.add(0, 1);
                flag = false;
                break;
            }
    
            
            position --;
        }
    }
}