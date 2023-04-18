/*
The first two numbers in the fibonacci sequence are 1, and all other numbers in 
the sequence are defined as the sum of the last two fibonacci numbers. The first 
10 numbers in the fibonacci sequence are 1, 1, 2, 3, 5, 8, 13, 21, 34, and 55.

Implement the function fibonacci that takes as input an Integer n and returns 
the nth fibonacci number. Assume that n will always be greater than 0.

fibonacci(1) = 1
fibonacci(2) = 1
fibonacci(5) = 5
*/

public class Result {
    public Integer fibonacci(Integer n) {
        if(n < 0) return 0;
        if(n == 1) return 1;
        return fibonacci(n - 1) + fibonacci ( n- 2);
    }
}