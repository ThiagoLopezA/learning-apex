/*
 Implement a function diff that calculates the absolute difference between two integers.
 diff(5, 2) = 3
 diff(2, 5) = 3
 */

 public class Solution {
    public Integer diff(Integer a, Integer b) {
        if(a > b) return a - b;
        return b - a;
    }
 }