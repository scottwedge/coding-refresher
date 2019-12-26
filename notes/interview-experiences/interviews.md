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
|Ally             | HR screen, Hangouts,              |    0    |
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

## Ally OkR Solutions

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
