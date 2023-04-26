/**
A classic computer science problem is to merge to sorted lists. In this problem you must 
write a method that accepts two sorted lists of integers: list1, and list2 and returns a 
list sorted in ascending order containing all the values in list1 and lis2.

Example 1
input: list1 = [1, 3, 5, 7], list2=[2, 4, 6,8];
output: [1, 2, 3, 4, 5, 8, 7, 8]

Example 2
input: list1 = [1, 3, 5, 7], list2=[2, 4, 6,8, 9, 10, 100];
output: [1, 2, 3, 4, 5, 8, 7, 8, 9, 10, 100];


 */

public class Solution {
    public static List<Integer> mergeLists(List<Integer> list1, List<Integer> list2){
        for(Integer num : list2){
            list1.add(num);
        }
    
        list1.sort();
    
        return list1;
    }
}