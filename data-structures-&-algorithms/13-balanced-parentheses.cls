/**
  Given a String s containing only the six characters '(', '{', '[', ']', '}', 
  and ')', return true only if every opening bracket has a matching closing bracket 
  of the same type, and all brackets are closed in the correct order.
 Examples:
    input: '()[(())]', Output: true
    Input: '([{}]))', Output: false
    Input: '([]}', Output: false
 */

public class Solution {
    public Boolean isValid(String s){
        Integer parenthesesNum = 0;
        Integer bracketsNum = 0;
        Integer squareBracketsNum = 0;
    
        List<String> signs = s.split('');
    
        for(String sign : signs){
            switch on sign {
                when '{' {
                    bracketsNum++;
                }
                when '}' {
                    bracketsNum --;
                }
                when '(' {
                    parenthesesNum++;
                }
                when ')' {
                    parenthesesNum--;
                }
                when '[' {
                    squareBracketsNum++;
                }
                when ']' {
                    squareBracketsNum--;
                }
            }
        }
    
        if(parenthesesNum != 0 || bracketsNum  != 0 || squareBracketsNum != 0) return false;
    
        return true;
    }
}