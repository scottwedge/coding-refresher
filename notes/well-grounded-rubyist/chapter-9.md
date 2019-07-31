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
a = %I(interpolated name #{name})
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

*insert at beginning of array(single element and multiple element)*
<details>
<summary>Answer</summary>

```ruby
arr = [1,2]
arr.unshift(100)
# [100, 1, 2]
arr.unshift(111,222,333)
# [111, 222, 333, 100, 1, 2]
```

</details>

*delete at begining(single element and multiple element)*
<details>
<summary>Answer</summary>

```ruby
arr = [10,20,30,40]
arr.shift
# 10
# arr -> [20, 30, 40]
arr.shift(2)
# [20, 30]
# arr -> [40]
```

</details>

*insert at end (single element and multiple element)*
<details>
<summary>Answer</summary>

```ruby
arr = [11, 22]
arr.push(33)
# [11, 22, 33]
arr.push(44, 55, 66)
# => [11, 22, 33, 44, 55, 66]
```

</details>

*delete at end(single element and multiple element)*
<details>
<summary>Answer</summary>

```ruby
arr = [100, 200, 300, 400, 500, 600, 777, 888]
arr.pop
#  => 888
arr.pop(3)
#  => [500, 600, 777]
arr
#  => [100, 200, 300, 400]
```

</details>

*concatenate another array to the current array*
<details>
<summary>Answer</summary>

```ruby
arr = %w( apple orange)
arr2 = [1,2]
arr.concat(arr2)
p arr
# ["apple", "orange", 1, 2]
```

</details>

*how concat is different from + ?*
<details>
<summary>Answer</summary>

- "+" creates a new array
- concat appends it to the existing array

</details>

*replace*
<details>
<summary>Answer</summary>

- replaces the current array elements with the new array supplied.
- the object reference remains the same but the original array is replaced

```ruby
arr = [1,2,3]
arr.replace([4,5,6])
p arr
# [4,5,6]
```

</details>

*make the array single dimension*
<details>
<summary>Answer</summary>

- flatten creates a new flattened array
- flatten! modifies the original array

```ruby
array = [1,2,[3,4,[5],[6,[7,8]]]]
# [1, 2, [3, 4, [5], [6, [7, 8]]]]
array.flatten
# [1, 2, 3, 4, 5, 6, 7, 8]
array.flatten(1)
# [1, 2, 3, 4, [5], [6, [7, 8]]]
array.flatten(2)
# [1, 2, 3, 4, 5, 6, [7, 8]]
```

</details>

*reverse the contents of the array*
<details>
<summary>Answer</summary>

- reverse
- reverse!

</details>

*join - what's the alias operator for join method*
<details>
<summary>Answer</summary>

- join creates a string out of array.
- "*" is an alias

```ruby
arr = %w(this is an array of words)
arr.join("-")
# "this-is-an-array-of-words"
arr * "---"
# "this---is---an---array---of---words"
```

</details>

*remove duplicates from an array*
<details>
<summary>Answer</summary>

- arr.uniq - creates a new array with out duplicates
- arr.uniq! - modifies the original array

</details>

*remove nil elements from array*
<details>
<summary>Answer</summary>

- compact
- compact!

</details>

### Querying

*get the size of the array*
<details>
<summary>Answer</summary>

- arr.size
- arr.length

</details>

*find out if its empty*
<details>
<summary>Answer</summary>

```ruby
arr.empty?
```

</details>

*find out if an element is present in the array*
<details>
<summary>Answer</summary>

```ruby
arr.include?(item)
```

</details>

*count the number of occurences of an element*
<details>
<summary>Answer</summary>

```ruby
arr.count(item)
```

</details>

*get the first element. also first n elements*
<details>
<summary>Answer</summary>

```ruby
arr = [1,2,3,4,5]
#  => [1, 2, 3, 4, 5]
arr.first
#  => 1
arr.first(3)
#  => [1, 2, 3]
```

</details>

*get the last element. also last n elements*
<details>
<summary>Answer</summary>

```ruby
arr = [1,2,3,4,5]
#  => [1, 2, 3, 4, 5]
arr.last
#  => 5
arr.last(3)
#  => [3, 4, 5]
```

</details>

## Hash

*using literals*
<details>
<summary>Answer</summary>

```ruby
h = {}
```

</details>

*using new*
<details>
<summary>Answer</summary>

```ruby
h = Hash.new
```

</details>

*set default values for values not found in hash*
<details>
<summary>Answer</summary>

```ruby
h = Hash.new(0)
puts h["apple"]
# 0
```

</details>

*using Hash class method []*
<details>
<summary>Answer</summary>

- it accepts comma separated values in even numbers. odd numbers will throw error
- it also accepts any object with to_hash method defined

```ruby
Hash[ "key1", "val1", "key2", "val2"]
#  => {"key1"=>"val1", "key2"=>"val2"}
Hash[ [["key1", "val1"], ["key2", "val2"]] ]
# => {"key1"=>"val1", "key2"=>"val2"}
```

</details>

*using Hash method*
<details>
<summary>Answer</summary>

- Hash [] -> creates empty hash
- Hash nil -> creates empty hash
- Hash also accpets any object with to_hash method defined
- not to_h but to_hash method

</details>


*insert new element*
<details>
<summary>Answer</summary>

```ruby
h = {}
h["NY"] = "New York"
# "New York"
p h
# => {"NY"=>"New York"}
```

</details>

*alias method for inserting*
<details>
<summary>Answer</summary>

```ruby
h = {}
h.store("key1", "value1")
# "value1"
p h
# {"key1"=>"value1"}
```

</details>

*retrieve a stored element*
<details>
<summary>Answer</summary>

- returns nil by default if not found

```ruby
h["key1"]
# "value1"
```

</details>

*alias for retreival method*
<details>
<summary>Answer</summary>

```ruby
h.fetch("key1")
```

</details>

*what happends if the key looked up is not present in hash throug the alias method*
<details>
<summary>Answer</summary>

- fetch raises exception if the looked up key is not found

</details>

*when retreiving a stored value, return a default value dynamically if not found*
<details>
<summary>Answer</summary>

```ruby
h.fetch("mykey", "Key not found")
```

</details>

*retrieve multiple values as an array*
<details>
<summary>Answer</summary>

```ruby
h = {"key1"=>"value1", "key2"=>"val2"}
h.values_at("key1", "mykey", "key2")
# [ "value1", nil, "val2"]
```
</details>

*when a key is not found in hash, make it so that the key is added to the hash with default value.*
<details>
<summary>Answer</summary>

```ruby
h = Hash.new {|hash, key| hash[key] = 0}
h["apples"]
p h
# { "apples" => 0}
```

</details>

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

