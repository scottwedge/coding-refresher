# Aggregate Data

| Name            | Rounds                          |  Result |
|-----------------|---------------------------------|---------|
|Accenture        | Aptitude (Campus Drive)         |    0    |
|Sony             | Aptitude, F2F (Campus Drive)    |    0    |
|IBM              | Aptitude, F2F (Campus Drive)    |    1    |
|Athena           | Telephonic, F2F (1)             |    1    |
|Google           | Telephonic (Online)             |    0    |
|Facebook         | Telephonic (Online)             |    0    |
|Solution Star    | Telephonic (Online)             |    0    |
|Freshdesk        | Coding (hackerrank), F2F (2)    |    0    |
|Pramata          | Coding (hackerearth), F2F       |    1    |
|Involvio         | Online (Video)                  |    1    |
|Dialpad          | Online (Video)                  |    0    |
|Kuvera           | F2F (1)                         |    1    |
|Synaptic         | Ghosted                         |    0    |
|Hiver            | Take Home                       |    0    |
|Ally             | HR screen, Hangouts,            |    0    |
|Lynk Logistics   | Telephonic                      |    0    |
|Fourkites        |                                 |    0    |


# Google

- eliminate duplicates in an array in place. return the last index.

# Facebook

- flatten a linked list with another pointer

# Solution Star

- spiral traverse a 2D array
- how to use public and private method in javascript
- what is closure, give an example
- revealing module pattern

# Freshdesk

- object oriented programming basic concepts
- mysql - basics
- design a schema for foot ball tournament / score board

# Pramata

- sorting
- sql joins, ranks
- find a phone number in a tree.

# Involvio (rails)

- last project you worked on
- how to handle multi-tenant db connections - octopus gem?
- what is ActiveRecord::Base
- what is a module ?
- solve this using modules (should give me both class method and instance method)

```ruby
class User
end

u = User.new
u.address
User.count
```
- Use
    - has_many_through
    - has_many_and_belongs_to

- single table inheritance

```ruby
xavier = User.create(name: "Xavier")
john = User.create(name: "John", parent: xavier)
edward = User.create(name: "Edward", parent: xavier)
xavier.children
# ["john", "edward"]
```
- multi table inheritance
- mysql
    - joins
    - order by, group by
    - Employee : | id | name | ; Reward: |id | employee_id | amount |
    - get top 3 employees with max rewards on a particular month
    - get second max salary
    - what's mysql engine ?
        - innodb vs mysam

# Dialpad

- level order traversal
- zig zag
    - using one stack and one queue
    - using two stacks
    - recursive way
    - using hash and array

*Generally asked in this company*

- Trees
    - Is BST ?
    - are two trees identical
    - are two tree mirror image of each other ?
    - create mirror image of a tree
    - level order traversal
- Linked List
    - General
- Trie
- string parsing problem regarding unique number combinations
- Design
    - DS for insert, delete, undo, redo with strings
    - assign , unassign phone numbers, availability of phone numbers - how to store this
    - a rudimentary API
    - Calculator
    - hash map
    - Design Chess game
- Interested in locks
- Describe a technical project in depth

# Synaptic

- Ghosted

# Hiver

- Build Tic Tac Toe - extend it from 3 * 3 to any square matrix

# Ally

- Stopped to proceed with initial discussion [decision to stay back]

# Lynk Logistics

*Phone Screen*

- About yourself
- About the work
- What is a multi-tenant system (based on work)
- Sorting algorithms
- Monolith Vs Micorservice architecture
- Disadvantages of Microservice architecture
- MySql - what is indexing

*previously asked questions in this company*

- https://www.hackerrank.com/challenges/suffix-rotation
- https://www.hackerrank.com/contests/hourrank-14/challenges/clues-on-a-binary-path/problem

*Topics to focus*

- Trees
- Graphs
- Game Theory
- Backtracking
- Dynamic Programming

# Ally OkR Solutions

*Prep*

- Given a sorted array of duplicates of 2 how to find which number occurred only once?
- K largest numbers from a stream of integers  
- Next lexicographic string with same charcters  
- Largest sum sub matrix
- Rotate matrix 90 degrees inplace  
- In a sorted array find the number of positions of the number that are not in sorted order
- Give minimum for a sliding window
- spiral traversal of 2D matrix
- second shortest path in graph
- Link left to right in each level
- find the kth element in array such that their only factors are prime

*Asked*

- Top k frequent words in a given paragraph

# Fourkites

*prep*

- Traverse to the last kth node in the linked list using two pointers.
- Reverse the linked list
- Diagonal sum of a tree
- Find the LCA of a binary Tree
- Bottom,Top,Right,Left side view of a tree
- Factor of a given binary tree
- why hashing is needed?
- Design a google calendar dada structure
- Zigzag level order traversal 
- Clone a binary tree
- Given a stock price list for 10 Days, when should one have bought/ sold to get the maximum profit?
- Array related
- Tree related - traversals, different views
- Trees - Views of trees - Top, side
- Assume you are going to create an app like ola cabs. You have an app for rider and driver. Design a workflow for the app and functions that you will have in the app.  
- Given an array of file paths, parse and represent in tree format.
- Given an array, return the maximum continuos subarray sum.
- Column Traversal in Trees
- They asked be about finding the islands in a matrix of 0s and 1s.
- Implement a LRU cache that can be initialized with a max size (in bytes) and keeps track of the hits/misses.  
- Implement a singleton
- In a non-directed graph, count the number of subgraphs (not necessarily fully connected, just subgraphs in general). Discuss why and how you'd optimize this given different number of vertices, different density/completion of the graph, etc...
- Design a network file system: which operations of a POSIX file system are you going to support, how would you organize the hardware, how does the communication work, how are the files stored, etc... discuss all design decisions in terms of the CAP theorem, be able to spot hot-spots and single points of failure.
- How would you design a transactional file system?
- Given a text log, parse out any ip addresses.
- Search on strings in a constant time complexity.
- Design Citi Bike.
- Design a multi-player mobile game
- “One thing that correlates with experience is how much failure you’ve been through so I tend to ask about a project that failed. What I’m looking for is 1) Are you able to identify why it failed without just pointing fingers? and 2) Do you recognize what you could have done to make it more successful?”
- ‘What design decision did you make that you would like to go back and have over again?’
- You are given a string X. You have to generate the set (all unique) of all the substrings of X and then sort that set lexicographically. Now to have to tell the rank of the string X in the new set formed.
Note: String X contains only lowercase English letters.
eg : “eren”
Lexicographically Sorted set of unique substrings of X = {“e”, “en”, “er”, “ere”, “eren”, “n”, “r”, “re”, “ren”}
Rank of “eren” = 5
Time complexity matters, optimize your algorithm
- A matrix is given. There are 3 types of cells marked with 0,1,2. You start with cell marked 2,you cannot go to cells marked 1,only allowed cells are those marked 0. You have to find minimum cost to reach boundary of the matrix.
Try to give your best in an online round. Your score in this round will matter for your overall evaluation/selection.15 students were shortlisted after this round.
- Reverse Linked List(with and without recursion)
- Preorder Traversal of Binary Tree(with and without recursion)
- Coding questions from the online round.
- Convert Binary Tree to Double linked list and vice-versa.
- An expression is given in form of a double linked list. You have to evaluate the expression and store the result at the end in one single node of linked list by merging and shrinking the linked list one by one.
- Data structures used in search engines(Trie implementation)
- Djikstra’s Algorithm implementation and other shortest path related graph questions. In this round either DP/graph questions were being asked.
- https://www.geeksforgeeks.org/puzzle-13-100-prisoners-with-redblack-hats/
- https://www.geeksforgeeks.org/search-a-word-in-a-2d-grid-of-characters/
- https://www.geeksforgeeks.org/fourkites-interview-experience-pool-campus/
- https://leetcode.com/discuss/interview-experience/149563/Linkedin-Staff-Software-Engineer
- https://leetcode.com/discuss/interview-experience/204881/google-interviews-for-staff-sw-engineer
- https://www.hackerearth.com/practice/basic-programming/implementation/basics-of-implementation/practice-problems/algorithm/energetic-fruits-1ddb5ca3/