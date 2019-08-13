# Chapter 10 ( Enumerable & Enumerator)

*What's an enumerable object in ruby ?*
<details>
<summary>Answer</summary>

- ruby links the concept of collections with enumerable module
- all classes that include Enumerable module enter into a contract relation. The class will define a method called *each* and in turn the Enumerable module will give certain capabilities to the objects.

</details>


*Write a proof of concept each (which yields a set of colors) method by including Enumerable*
<details>
<summary>Answer</summary>

```ruby
class Rainbow
    include Enumerable
    def each
        yield "red"
        yield "orange"
        yield "yellow"
        yield "green"
        yield "blue"
        yield "indigo"
        yield "violet"
    end
end

r = Rainbow.new
r.each do |color|
    puts "Next color: #{color}"
end
```

</details>

*Boolean methods on the Enumerable object*
<details>
<summary>Answer</summary>

- all
- any
- one
- none
- include

</details>

*How boolean method works*
<details>
<summary>Answer</summary>

- It takes in a code block

</details>

*Will enumerable methods work on the Range 10.1..11.0*
<details>
<summary>Answer</summary>

- It will throw Type error

</details>
    
## Enumerable Search

*find based on code block*

*find based on lambda function and code block*


- use find_all
    - select & rejects
    - what does this return in most cases
    - what does it return for hash and set

- grep method
    - what's the base for grep method?
    - write grep in terms of select method

## grouping and partition
        - give example of group_by
            - for array
            - for hash
        - partition
            - what's the order of elements returned
    - min & max
        - what operator is the min and max based on ?
    - looping
        - each
        - each_with_index
        - reverse_each
        - each_index
        - each_slice
        - each_cons
        - map
        - special way of passing a method to map
            - alias for map
        - inject
            - give an example of summing all elements in an array
        - cycle
    - Enumerable like String
        - each_byte
        - each_char
        - each_codepoint
        - each_line
            - what does this method use for seperating
    - Sort
        - usually used to sort array of objects
            - how make the objects stored in the array sortable
        - sort_by shortcut
- Enumerator
    - Difference between Iterator and an Enumerator
    - Create a simple Enumerator
        - with manual yield calls
            - use << instead of yield calls
            - use a range of 1 to 5 instead of manual yields
    - create an enumerator that yields 1 to 10
    - enum_for ( method_name, arg1, arg2, arg3)
        - another way of getting enum for an object with imiplicit enumerators
    - create a class CardDeck with suits and cards.
        - make cards accessible only via enums so that its not modifiable
    - get the next item in an enumerator
    - get the previous item in an enumerator
    - what is the problem with method chaining
    - how does using enumerator solve the problem with chaining
        - get the index along with the item being enumerated
    - implement ^ operator for string with enumerator
    - make use of lazy enumerator approach to get first 10 items that are divisible by 3 in range 1..Float::INIFINITY