/*
A list is considered to be sorted ascending when no element in the list is smaller than the preceding 
element if one is present. Similarly, a list is considered sorted descending if no element in the list 
is larger than the preceding element if any.

Implement the method isSorted that takes as input a list of integers numbers, returns true if the list 
is sorted in any direction (acsending or descending), and returns false otherwise.

Example: isSorted(new List<Integer> {5, 2, 0, -1}) evaluates to true because the input list is sorted 
descending.
*/

public class Solution {
    public boolean isSorted(List<Integer> numbers) {
        Boolean isAsc = false;
        Boolean isDesc = false;
        
        if(numbers.size() == 1) return true;
    
        for(Integer i = 0; i < numbers.size() - 1; i++){
            
            if(numbers.get(i) < numbers.get(i + 1)){
                if(isDesc) return false;            
                isAsc = true;
            } else if(numbers.get(i) > numbers.get(i + 1)){
                if(isAsc) return false;
                isDesc = true;
            }
        }
    
        return true;
    }
}