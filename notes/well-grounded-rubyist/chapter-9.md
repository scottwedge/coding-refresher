# Chapter 9 (Array, Hash, Set, Range)

- print all hash elements with its index
**Arrays**
- creating
    - using new
        - use new to create an array with size 10 and with each element initialzed to "hi"
        - when I modify the string object "hi" at position 0 what happens ?
        - How to initialize array with each index having it's own object instead of same object reference
    - Define a method on String class so that string gets converted to array of characters
    - using []
    - what does %w{} do  ?
    - create an array of single quoted string
    - created an array of double quoted string
    - create an array of symbols - single quoted
    - create an array of symbols - double quoted
    - what does try_convert method do ?
        - what are the classes that has this defined ?
            (string, array, hash, io, regexp)
- Array Operations (single element, multiple elements)
    - insert at beginning
    - delete at begining
    - insert at end 
    - delete at end
    - concatenate another array
        - how is it different from +
    - replace
- Array Transformations
    - make the array single dimension
    - reverse the contents of the array
    - join - what's the alias operator for join method
    - remove duplicates from an array
    - remove nil elements from array
    - convert array to hash
- Querying
    - get the size of the array
    - find out if its empty
    - find out if an element is present in the array
    - count the number of occurences of an element
    - get the first element. also first n elements
    - get the last element. also last n elements
**Hash**
- creation
    - using literals
    - using new
        - set default values for new values
        - passing block to set default value
    - using hash method
        - how does it work
- Operations
    - insert new element
    - alias method for inserting
    - retrieve stored element
    - alias for retreival method
        - retrieve multiple values
    - add another hash on to the current hash
        - return new hash instead of modifying the existing one
- Transformations
    - select
    - reject
    - clear
    - replace
    - invert
- Querying
    - check if a key is present
        - what are the aliases of that method (include, key, member)
    - check if a value is present
    - check if it is empty
    - get the size of current hash
- As method arguments
    - how do methods work if the last argument is a hash
    - how do methods work if the first argument is a hash

**Named Arguments**

- def m (a, b, c, *d, p: "Mars", q:, **r )
    - explain what each argument is

**Range**

- creation
    - literal syntax
    - new
    - exclusion
- Querying
    - get the start element
    - get then last element
    - check if the last element is included or excluded
    - check if an element is prsenent with in the range
    - how does cover? work

**Collection**

- What Object can be called as a collection

**Set**

- How to make set available for usage
- How does it maintain uniqueness internally
- Creation
    - Create a set
    - Create a set from an array
    - from a hash
    - pass a code block with array creation
- insert/deletereject

    - how to insert via <<
    - what's the method alias for inserting
    - how to delete
        - what happens if the element is not present
    - what's the difference between add and add?
- Operations (what operator)
    - intersection
    - union
    - difference
    - exlusive union - only elements present either in a or b but not on both
    - merge via method
- subset and superset methods

