1. Boyer-Moore Voting Algorithm
2. Kadane's Algorithm
3. Gauss's formula for sum of n numbers
4. merge sort
5. Binet's method for Fibonacci
6. Fibonacci formula
   1. public class Solution {
    public int climbStairs(int n) {
        double sqrt5=Math.sqrt(5);
        double fibn=Math.pow((1+sqrt5)/2,n+1)-Math.pow((1-sqrt5)/2,n+1);
        return (int)(fibn/sqrt5);
    }
}