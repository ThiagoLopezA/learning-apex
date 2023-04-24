/**
 public static List<Integer> squareList(List<Integer> nums){
    List<Integer> result = new List<Integer>();

    for(Integer num : nums){
        result.add((Integer) math.pow(num, 2));
    }

    result.sort();
    
    return result;
}
*/

public class Solution {
    public static List<Integer> squareList(List<Integer> nums){
        List<Integer> result = new List<Integer>();
    
        for(Integer num : nums){
            result.add((Integer) math.pow(num, 2));
        }
    
        result.sort();
        
        return result;
    }
}