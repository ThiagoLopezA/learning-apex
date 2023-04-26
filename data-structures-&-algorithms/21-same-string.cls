/**
Given two strings containing backspaces identified with '#', return true if the strings 
are the same after applying the backspaces.

Example 1

String str1 = 'xy#z';
String str2 = 'xyz#';
Boolean result = sameString(str1, str2);

result == false because the strings evaluate to xz and xy after the back spaces are applied.
Example 2

String str1 = 'ab#c';
String str2 = 'ac';
Boolean result = sameString(str1, str2);

result == true because the strings evaluate to ac and ac after the backspaces are applied.
*/

public class Solution {
    public static Boolean sameString(String str1, String str2){
        List<String> lettersFromStr1 = removeBackspaces(str1.split(''));
        List<String> lettersFromStr2 = removeBackspaces(str2.split(''));
    
        return lettersFromStr1.equals(lettersFromStr2);
    }
    
    public List<String> removeBackspaces(List<String> str){
        List<String> temp = new List<String>();
    
        for(String letter : str){
            if(letter != '#'){
                temp.add(letter);
            } else {
                Integer size = temp.size() - 1;
                if(size >= 0) temp.remove(size);
            }
        }
    
        if(temp.isEmpty() || str.isEmpty()){
            return new List<String>{''};
        }
    
        return temp;
    }
}