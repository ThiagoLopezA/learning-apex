/**
 Two words are considered valid anagrams if they are composed of the exact same 
 letters with the exact same frequency. Implement the method isAnagram that takes 
 as input two strings s1 and s2, and returns true if the two words are anagrams. 
 Assume that the two strings contain only lowercase alphabets a-z.

 Examples:

 isAnagram('apex', 'peax') == true
 isAnagram('sandbox', 'sandpit') == false
*/

public class Solution {
    public boolean isAnagram(String s1, String s2) {
        if(s1 == null || s2 == null) return false;
    
        List<String> s1Chars = s1.split('');
        List<String> s2Chars = s2.split('');
    
        s1Chars.sort();
        s2Chars.sort();
    
        return s1Chars.equals(s2Chars);
    }
}