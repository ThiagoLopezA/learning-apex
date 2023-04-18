/**
 Given Integers a, b, and c, determine if any two of them add up to the third and
 return 'a', 'b', 'c' depending on which the sum is. If no two numbers add up to 
 a third number, return an empty string. Assume that multiple solutions do not exist.
 whichTwo(5, 10, 5) = 'b'
 whichTwo(2, 0, 3) = ''
 */

public class Result {
    static public String whichTwo(Integer a, Integer b, Integer c) {
    	List<Integer> nums = new List<Integer>{a, b, c};
    	List<String> response = new List<String>{'a', 'b', 'c'}; 
    

    	for(Integer i = 0; i < nums.size(); i++){
        	for(Integer j = 0; j < nums.size(); j++){
            	if(i != j) {
                	Integer result = nums.get(j) + nums.get(i);
                    
                	if(nums.contains(result)){
                    	Integer index = nums.indexOf(result);
                        if(index != j && index != i) return response.get(index);
                	}
            	}
        	}
    	}

    	return '';
	}
}