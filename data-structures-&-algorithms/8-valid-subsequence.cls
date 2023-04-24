/**
 Given a method that takes two strings s1 and s2 return true if s1 is a subsequence 
 of s2.

 A valid subsequence means that string s1 can be formed from string s2 by deleting 
 some characters, but maintaining the order.
 Example 1

 Input: s1 = 'abc', s2 = 'aghlrbrrc'
 Output: true

 Input: s1 = 'abc', s2 = 'caaab'
 Output: false
 Constraints
    s1 and s2 will only consist of lowercase English letters.
    s2 will always be longer than s1

 */

public class Solution {
    public Boolean isSubSequence(String s1, String s2){
        List<String> s2Letters = s2.split('');
        List<String> s1Letters = s1.split('');
        Integer position = s2Letters.indexOf(s1Letters.get(0));
    
        for(Integer i = 1; i < s1Letters.size() - 1; i++){
            Integer tempPosition = s2Letters.indexOf(s1Letters.get(i));
            if(tempPosition < position || tempPosition == -1) return false;
            position = tempPosition;
        }
    
        return true;
    }
}