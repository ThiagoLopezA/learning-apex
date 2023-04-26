/**
 Given a List of Integers (List<Integer>), write a function that segregates even and odd numbers. 
 The function should put all even numbers first, and then odd numbers.

 You are required to modify the list that is passed. Try doing so without creating any extra lists,
 which would mean an O(1) space complexity.

 Example 1:

 Input: [5, 4, 3, 2, 1, 6]

 Output: [2, 4, 6, 1, 3, 5]

 The above output may vary since you are not required to order the even and odd numbers in any 
 sequence. As long as even numbers come before odd numbers, the answer is valid. [4, 6, 2, 5, 1, 3] 
 and [6, 4, 2, 3, 1, 5] are also valid answers.

 Example 2:

 Input: [12, 34, 45, 9, 8, 90, 3]

 Output: [8, 12, 34, 90, 3, 9, 45]
*/

public class Solution {
    public static void segregateEvenOdd(List<Integer> numbers){
        List<Integer> odds = new List<Integer>();
    
        for(Integer i = 0; i < numbers.size() - 1; i++){
            Integer num = numbers.get(i);
            
            if(math.mod(num,2) != 0){
                odds.add(num);
                numbers.remove(i);
                i--;
            }
        }
    
        for(Integer odd : odds){
            numbers.add(odd);
        }
    
    
    }
}