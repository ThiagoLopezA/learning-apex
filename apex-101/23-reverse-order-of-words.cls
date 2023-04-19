/**
 Implement a function reverseWordsInASentence that will take a String containing words 
 separated by spaces as an argument, and return a string with the order of the words 
 reversed.

Example : If the sentence is The quick brown fox jumps over the lazy dog, then 
reverseWordsInASentence(String sentence) should evaluate to dog lazy the over jumps 
fox brown quick The.
 */

public class Solution {
    public String reverseWordsInASentence(String sentence){
        if(String.isEmpty(sentence)) return sentence;
    
        List<String> words = sentence.split(' ', 0);
        List<String> reversed = new List<String>();
        String rev = '';
        Integer size = words.size();
    
        for(Integer i = size - 1; i >= 0; i--){
            if(i != size - 1) {
                rev += ' ' + words.get(i);
            } else {
                rev += words.get(i);
            }
        }
    
        return rev;
    
    }
}