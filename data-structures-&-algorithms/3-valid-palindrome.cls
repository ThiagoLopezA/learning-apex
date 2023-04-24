/**
A String is a considered a valid palindrome if it reads the same forwards and backwards. 
For the purpose of this problem, we consider a String to be a valid palindrome if it reads 
the same forwards and backwards after after converting all characters to lowercase, and 
removing all characters that are not a number or a letter.

Given a String str, return true if is a valid palindrome given the definition above, and 
return false if it is not. Assume that the input will contain only English numbers and letters 
(0-9, a-z, A-Z) along with punctuation and spaces.

Examples:
isPalindrome('A man, a plan, a canal: Panama') returns true
isPalindrome('Panama') returns false 
*/

public class Solution {
    public Boolean isPalindrome(String str){
        List<String> chars = str.toLowerCase().split('');
        List<String> filtered = new List<String>();
        List<String> reversedFiltered = new List<String>();
    
        for(String letter : chars){
            if(letter.isAlpha()){
                filtered.add(letter);
            }
        }
    
        for(Integer i = filtered.size() - 1 ; i >= 0; i --){
            reversedFiltered.add(filtered.get(i));
        }
    
        return filtered.equals(reversedFiltered);
    }
}