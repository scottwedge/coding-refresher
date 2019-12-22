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
|Ally             | Initial Discussion              |    0    |
|Lynk Logistics   | Telephonic                      |         |


## Google

- eliminate duplicates in an array in place. return the last index.

## Facebook

- flatten a linked list with another pointer

## Solution Star

- spiral traverse a 2D array
- how to use public and private method in javascript
- what is closure, give an example
- revealing module pattern

## Freshdesk

- object oriented programming basic concepts
- mysql - basics
- design a schema for foot ball tournament / score board

## Pramata

- sorting
- sql joins, ranks
- find a phone number in a tree.

## Involvio (rails)

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

## Dialpad

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

## Synaptic

- Ghosted

## Hiver

- Build Tic Tac Toe - extend it from 3 * 3 to any square matrix

## Ally

- Stopped to proceed with initial discussion [decision to stay back]

## Lynk Logistics

#1

Lexi is playing a string game with following rules:
  a. It starts with a string S.
  b. During each turn, she performs the following move:
      a. Choose an index in s. The chosen index must be strictly greather than any index chosen in a prior move.
      b. Perform one or more circular rotations (in either direction) of the suffix starting at the chose index.
For example, let's say abcdefjghi. During oru move, we choose to do three right rotations of the suffix starting at index 6.

Original String: abcdefjghi
Move 1: abcdefjghi -> abcdefijgh -> abcdfhijg -> abcdefghij
Note that this counts as one move

The goal of the game is to convert s into the lexicographically smallest possible string in as few moves as possible.
In other words, we want the chracters to be in alphabetical order.
Find the minimum number of moves necessary to convert s into the lexicographically smallest string and print that number.

Input Format

Initial String s

Constraints

  Consists of lowercase English alphabetic letters only.

Output Format

Print an integer on a new line denoting the minimum number of moves required to convert s into the lexicographically smallest string possible.

Sample Input 1
abcdefghij

Sample Output 1
0

Sample Input 2
acab

Sample Output 2
1

#2

Problem description
Buffy and Willow live in Sunnydate, which has n houses and m bidirectional roads connecting them.
Each road has an assigned vatue, c(i) , where c(i) € {0,1}, and each house is numbered with a distinct integer from 1 to n.
Buffy and Willow are looking for vampires and need to find the number of different paths of length d from house number 1.
Each path is characterized by a binary sequence of length d, where each integer j in the path is the value of c(j) for the
jth edge in the path. Two paths are different if the binary sequences characterizing these paths are distinct.
Note that they may need to visit the same house several times or use the same road several times to find all possible paths.
Given a map of Sunnydale, hetp Buffy and Willow find and print the number of different paths of length d from
house number 1 to the other houses in Sunnydale.
Input Format:
The first line contains three space-separated integers describing the respective values of n (the number of houses),
m (the number of bidirectional roads), and d (the distance they want to travel).
Each of the m subsequent lines contains three space-separated integers describing the respective values of u, v, and c
that define a bidirectional road between houses u and v having assigned value c.
constraints:
There may be roads connecting house to itself.
There may be more than one road between two houses.
Output Format:
Print an integer denoting the total number of paths.
Sample Input:
323
1290
131
Sample Output:
4