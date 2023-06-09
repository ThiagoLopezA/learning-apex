/**
 A union between two sets A and B is a set that contains all elements from A and B. 
 For example, the unions of sets {1, 5, 10} and {1, 3, 5} is {1, 3, 5, 10}.

 Implement the method setUnion that takes as input two sets of integers set1 and set2 
 and returns the union of the two sets. The method should not modify the original sets.

 Given the following test code:

 Set<Integer> set1 = new Set<Integer> {1, 2};
 Set<Integer> set2 = new Set<Integer> {4, 5};
 Set<Integer> set3 = setUnion(set1, set2);

 The set set3 contains the numbers 1, 2, 4, and 5.
*/

public class Solution {
    public Set<Integer> setUnion(Set<Integer> set1, Set<Integer> set2) {
        Set<Integer> union = new Set<Integer>();
    
        for(Integer val : set1){
            union.add(val);
        }
    
        for(Integer val : set2){
            union.add(val);
        }
    
        return union;
    }
}