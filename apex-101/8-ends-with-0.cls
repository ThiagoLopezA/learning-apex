/*
 Given an integer, return true if the integer ends with 0, otherwise return false.
 isEndWithZero(12) == false
 isEndWithZero(1230) == true
*/

public class Result {
    public Boolean isEndWithZero(Integer num){
        String toString = num + '';
        return toString.substring(toString.length() - 1) == '0';
   }
}