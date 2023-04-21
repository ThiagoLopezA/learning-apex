/**
 Implement the method sameElements that takes as input two lists of integers nums1 and nums2,
and returns true if and only if every integer in one of the lists is also contained by the other 
list. This means that for sameElements to return true, there should be no integer in nums1 that 
is not present in nums2, and no integer in nums2 that is not present in nums1.

Note that the lists may contain duplicates and your solution should assume no specific ordering.

Examples:

sameElements(new List {5, 7}, new List {7, 5, 5}) evaluates to true

sameElements(new List {5, 7}, new List {7, 5, 9}) evaluates to false
*/

public class Solution {
    public Boolean sameElements(List<Integer> nums1, List<Integer> nums2) {
        Set<Integer> set1 = new Set<Integer>();
        Set<Integer> set2 = new Set<Integer>();
    
        for(Integer i = 0; i < nums1.size(); i++){
            set1.add(nums1.get(i));
        }
    
        for(Integer i = 0; i < nums2.size(); i++){
            set2.add(nums2.get(i));
        }
    
        return set1.equals(set2);
    }
}