/**
  Given a string that contains a sequence of words separated by spaces, write a method 
  that reverses the order of the characters in each word.
  You must maintain white space and the order of the words.
  Example 1:

  Input: lets learn apex strings

  Output: stel nrael xepa sgnirts
  Example 2:

  Input: DSA is fun

  Output: ASD si nuf
*/

public class Solution {
    public static String reverseWords(String str){
        List<String> reversed = new List<String>();
        List<String> strList = str.split(' ');
      
        for(Integer i = 0; i < strList.size(); i++){
            List<String> letters = strList[i].split('');
            String reversedWord = '';
            for(Integer j = letters.size() - 1; j >= 0; j--){
                reversedWord += letters.get(j);
            }
      
            reversed.add(reversedWord);
      
            if(i != strList.size() - 1) reversed.add(' ');
        }
      
        String result = '';
      
        for(String word : reversed){
            result += word;
        }
      
        return result;
      }
}