/*
Given Integers a, b, and c, return true if a and b add up to c.
sumEquals(5, 5, 10) = true
sumEquals(2, 8, 9) = false
*/

public class Solution {
    public Boolean sumEquals(Integer a, Integer b, Integer c) {
        return (a+b) == c;
    }
}