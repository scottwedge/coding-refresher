# coding-refresher

This repo is made for staying in touch with coding.

0. CS106B - for learning programming concepts
1. Grokking Algorithms
1. The Algorithm Design Manual
1. Intorduction to Algorithms 3rd Edition
1. Programming Pearls
1. Elements of Programming Interview
1. Programming Interviews Exposed
1. Cracking the Coding Interview 6th Ed

- https://medium.com/leetcode-patterns
- https://www.reddit.com/r/lcpatterns
- https://leetcode.com/problems/find-all-anagrams-in-a-string/discuss/92007/sliding-window-algorithm-template-to-solve-all-the-leetcode-substring-search-problem
- https://leetcode.com/problems/subsets/discuss/27281/a-general-approach-to-backtracking-questions-in-java-subsets-permutations-combination-sum-palindrome-partitioning
- https://leetcode.com/explore/learn/card/recursion-i/250/principle-of-recursion/1439/
https://medium.com/algorithms-and-leetcode/note-for-divide-and-conquer-algorithms-c8bcffcd4440

## 0. CS106B

- Before beginning anything complete this. It goes through all the concepts necessary for proceeding further.

### Recursion

It generally follows this format

```python
def recursive_function(parameter):
  if(base_condition):
    # end the recursion
    # return result if necessary
  else:
    # do one unit of work
    # pass off the rest of work by calling the same function
```

[x] print \* n times
[x] find given string is a palindrome
[x] find pow of n, m
[x] print binary - handle negatives
[x] print a file in reverse (i.e) last line gets printed first, and so on..
    - this functions accepts a file handle
[x] print directory tree
[x] binary search
[ ] draw rectangle - fractal
[ ] cantor set

### Backtracking

1. print all binary of size n
1. print all decimal of size n
1. Print all dice rolls
1. print all dice rolls that add up to a sum
1. permute a string
1. permute a string and eliminate duplicates
1. sublists
1. 8 queen
    - print all solutions
    - find if a solution exists
    - generalize to n queen

### More Practice problems

- https://www.techiedelight.com/recursion-practice-problems-with-solutions/
- https://www.techiedelight.com/Category/backtracking/



NOTE: Python by default has a recursion depth of 1000. You can increase it by 

```python
sys.getrecursionlimit()
sys.setrecursionlimit(1500)
```

What is important in learning a concept is practice.

- https://www.topcoder.com/community/competitive-programming/tutorials/an-introduction-to-recursion-part-1/
- https://www.hackerrank.com/domains/algorithms?filters%5Bsubdomains%5D%5B%5D=recursion
- https://medium.com/@codingfreak/recursion-practice-problems-d8c6b4fbb04e
- https://www.geeksforgeeks.org/?p=185417
- https://www.hackerearth.com/practice/basic-programming/recursion/recursion-and-backtracking/tutorial/
- https://www.one-tab.com/page/eQoldISvTjyZ9F3lqRtmHA

-----

## 1. Grokking algorithms

### Chapter 1

1. Binary Search
2. Travelling Slesman Problem
3.

### Chapter 2

## 3. CLRS

### Chapter 1

NA

### Chapter 2

1. insertion sort
2. linear search
3. add two n-bit binary integers stored in arrays A and B. Output in n + 1 length array C
4. selection sort
5. merge sort
6. binary search
7. insertion sort using binary search to find insertion point
8. two sum problem O(n.log(n)) solution
9. merge sort with insertion sort on small arrays. determine optimal size of "k" for using insertion sort
10. bubble sort
11. find inversions in a given array A O(nlog(n)) solution

### Chapter 3

NA

### Chapter 4

1. maximum sum sub array O(n.log(n))
2. maximum sum sub array O(n^2)
3. non recursive linear algorithm for maximum sum sub array.

## Math for CS

Math topics I come accross in these books.

- logarithms
- calculating summations and series
- combinastorics - permutations - combinations
- probability theory
- algebra
- monotonicity of functions
- domain, co-domain, range
- polynomials
- exponentials
- factorials, stirling's approximation
- square root

keywords: algorithms, data structures, clrs, cormen, skiena, leiserson, rivest, stein, computer science, coding, programming, ctci
