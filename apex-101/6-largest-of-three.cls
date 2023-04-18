/*
 Given three Integers, return the largest
*/

public class Result {
    public static Integer findLargest(Integer num1, Integer num2, Integer num3) {
        List<Integer> nums = new List<Integer>{num1, num2, num3};
        Integer largest = num1;
    
        for(Integer i = 0; i < nums.size(); i++){
            Integer actual = nums.get(i);
            if(actual > largest) largest = actual; 
        }
        
        return largest;
    }
}