/**
 You are given a List of Integers which represents memory with -1 representing empty 
 space and all other Integers representing. Your task is to move all the empty spaces 
 to the end of the list while maintaining the order of the rest of the elements.

 Note: that you must do this in-place without making a copy of the array.
*/

public class Solution {
    public void defragging(Integer[] memory)
{
    List<Integer> emptySpaces = new List<Integer>();

    for(Integer i = 0; i < memory.size() - 1; i++){
        Integer space = memory.get(i);
        if(space == -1){
            emptySpaces.add(-1);
            memory.remove(i);
            i--;
        }
    }

    memory.addAll(emptySpaces);
}
}