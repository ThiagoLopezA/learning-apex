/**
 Given a non-zero positive integer n, return a list of the first n non-zero positive even numbers, 
 ordered ascending.

 Example: evenNumbers(5) returns a list containing the numbers 2, 4, 6, 8, 10.
*/

public class Solution {
    public List<Integer> evenNumbers(Integer n) {
        List<Integer> numbers = new List<Integer>();
        Integer counter = 1;
    
        while(numbers.size() < n){
            if(math.mod(counter, 2) == 0) numbers.add(counter);
            counter++;
        }
    
        return numbers;
    }
}