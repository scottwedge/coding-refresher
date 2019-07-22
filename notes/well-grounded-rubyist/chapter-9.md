# Chapter 9 (Array, Hash, Set, Range)

*print all hash elements with its index*
<details>
<summary>Answer</summary>

```ruby
my_hash = {key1: "value 1", key2: "value 2"}
my_hash.each_with_index do |(key, val), index|
    puts "#{key} => #{val} at index #{index}"
end
```

</details>

**Arrays**

*Using new - create an array with size 10 and with each element initialzed to "hi"
<details>
<summary>Answer</summary>

```ruby
a = Array.new(10, "hi")
```

</details>

*when I modify the string object "hi" at position 0 what happens ?*

<details>
<summary>Answer</summary>

- It changes all the other strings since they are all just references to the same object

```ruby
a = Array.new(10, "hi")
a[0][0] = "Yo"
p a
# ["Yoi", "Yoi", "Yoi", "Yoi", "Yoi", "Yoi", "Yoi", "Yoi", "Yoi", "Yoi"]
```

</details>


*How to initialize array with each index having it's own object instead of same object reference*
<details>
<summary>Answer</summary>

- Pass a code block which will return a new string object

```ruby
a = Array.new(10) {"hi"}
a[0][0] = "Yo"
p a
# ["Yoi", "hi", "hi", "hi", "hi", "hi", "hi", "hi", "hi", "hi"]
```

</details>

*Define a method on String class so that string gets converted to array of characters*
<details>
<summary>Answer</summary>

```ruby
class String
    def to_a
        split(//)
    end
end
"abcd".to_a
["a", "b", "c", "d"]
```

</details>

*create an array using []*

<details>
<summary>Answer</summary>

```ruby
my_array = [1, 2, "yo"]
```

</details>

*create an array of single quoted string using %char notation*
<details>
<summary>Answer</summary>

- %w()

```ruby
a = %w{this is an array of words in single quoted string}
# ["this", "is", "an", "array", "of", "words"]
```

</details>

*created an array of double quoted string*
<details>
<summary>Answer</summary>

- %W()

```ruby
a = %W(double quoted string array so interpolation like #{23 + 30} works)
#  => ["double", "quoted", "string", "array", "so", "interpolation", "like", "53", "works"]
```

</details>

*create an array of symbols - single quoted*
<details>
<summary>Answer</summary>

- %i

```ruby
a = %i(this symbol array)
#  => [:this, :symbol, :array]
```

</details>

*create an array of symbols - double quoted*
<details>
<summary>Answer</summary>

- %I

```ruby
name = "David"
a = %i(interpolated name #{name})
#  => [:interpolated, :name, :David]
```

</details>

*what does try_convert method do ?*
<details>
<summary>Answer</summary>

- try_convert tries to convert the given object to the called class type. If it is able to convert it will written the converted type otherwise nil.

```ruby
obj = Object.new
Array.try_convert(obj)
# => nil

def obj.to_ary
  [1,2,3]
end

Array.try_convert(obj)
# [1,2,3]
```

</details>

*what are the classes that has try_convert defined ?*
<details>
<summary>Answer</summary>

- String
- Array
- Hash
- IO
- RegExp

</details>

*insert at beginning(single element and multiple element)*
<details>
<summary>Answer</summary>

```ruby
```

</details>

*delete at begining(single element and multiple element)*
<details>
<summary>Answer</summary>

```ruby
```

</details>

*insert at end (single element and multiple element)*
<details>
<summary>Answer</summary>

```ruby
```

</details>

*delete at end(single element and multiple element)*
<details>
<summary>Answer</summary>

```ruby
```

</details>

*concatenate another array*
<details>
<summary>Answer</summary>

```ruby
```

</details>

*how concatenate is different from + ?*
<details>
<summary>Answer</summary>

```ruby
```

</details>

*replace*
<details>
<summary>Answer</summary>

```ruby
```

</details>

*make the array single dimension*
<details>
<summary>Answer</summary>

```ruby
```

</details>

*reverse the contents of the array*
<details>
<summary>Answer</summary>

```ruby
```

</details>

*join - what's the alias operator for join method*
<details>
<summary>Answer</summary>

```ruby
```

</details>

*remove duplicates from an array*
<details>
<summary>Answer</summary>

```ruby
```

</details>

*remove nil elements from array*
<details>
<summary>Answer</summary>

```ruby
```

</details>

*convert array to hash*
<details>
<summary>Answer</summary>

```ruby
```

</details>

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

