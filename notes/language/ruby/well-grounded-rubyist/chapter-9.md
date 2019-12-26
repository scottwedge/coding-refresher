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

*using class method [] on Hash*
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

*what happens if the key looked up is not present in hash through the alias method*
<details>
<summary>Answer</summary>

- fetch raises exception if the looked up key is not found

</details>

*when retrieving a stored value, return a default value dynamically if not found*
<details>
<summary>Answer</summary>

```ruby
h.fetch("mykey", "Key not found")
```

</details>

*retrieve multiple values of keys as an array from a hash*
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

*merge another hash on to the current hash*
<details>
<summary>Answer</summary>

- merge - replaces value of keys in hash 1 from hash 2 and returns the newly formed hash
- merge! - replaces the values in existing hash

```ruby
h1 = { "Key1" => "Value1", "Key2" => "Value2" }
h2 = { "Key2" => "modified value 2", "key3" => "value3"}
updated_hash = h1.merge(h2)
h1.merge!(h2)
```

</details>

### Hash Transformations

*select keys or values satisfying the given condition*
<details>
<summary>Answer</summary>

- select
- select!

```ruby
h = {'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine', 12 => 'dodecine'}
h.select { |key, val| key.to_i == 0 }
# => {"dog"=>"canine", "cat"=>"feline", "donkey"=>"asinine"}
```

</details>

*remove all the keys that are not satisfying a given condition*
<details>
<summary>Answer</summary>

- reject
- reject!

```ruby
h = {'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine', 12 => 'dodecine'}
h.reject { |key, val| key.to_i == 0 }
# => {12=>"dodecine"}
```

</details>

*empty all contents of a hash*
<details>
<summary>Answer</summary>

```ruby
h = {'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine', 12 => 'dodecine'}
h.clear
# {}
p h
# {}
```

</details>

*replace the hash with a new hash*
<details>
<summary>Answer</summary>

```ruby
h = {'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine'}
h.replace({'swan' => 'bird', 'dog' => 'animal'})
p h
# {"swan"=>"bird", "dog"=>"animal"}
```

</details>

*swap key and value in a hash*
<details>
<summary>Answer</summary>

- invert - if there are duplicate values the last key is taken as value

```ruby
h = {'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine', 'lion' => 'feline'}
inverted_hash = h.invert
# {"canine"=>"dog", "feline"=>"lion", "asinine"=>"donkey"}
```

</details>

### Hash - Querying

*method to check if a key is present*
<details>
<summary>Answer</summary>

- has_key?
- include?
- key?
- member?

</details>

*method to check if a value is present*
<details>
<summary>Answer</summary>

- has_value?
- value?

</details>

*check if it is empty*
<details>
<summary>Answer</summary>

- my_hash.empty?

</details>

*get the size of current hash*
<details>
<summary>Answer</summary>

- my_hash.size

</details>

*how do methods work if the last argument is a hash*

<details>
<summary>Answer</summary>

- the curly braces can be ignored

```ruby
def add_to_city_database(name, info)
    c = City.new
    c.name = name
    c.state = info[:state]
    c.population = info[:population]
    # ...
end

add_to_city_database("New York City",
    state: "New York",
    population: 7000000,
    nickname: "Big Apple"
)
```

</details>

*how do methods work if the first argument is a hash*
<details>
<summary>Answer</summary>

- if the first argument is a hash, ruby will think it is a code block and throw error
- so it should always be called with parenthesis. my_method({'key' => 'val}, arg2, ...)

</details>


## Named Arguments

*def m(x, y, *z, a: 1, b:, **c, &block) .explain what each argument is*

<details>
<summary>Answer</summary>

- x - required argument
- y - required argument
- *z - gobbles up all the other parameters before named parameters
- a - named parameter with default value (optional)
- b - required named parameter
- c - gobbles up all the other named parameters
- block - any code block passed

</details>

## Range

### Range - creation

*literal syntax*
<details>
<summary>Answer</summary>

```ruby
my_range = 10..100
my_range2 = 10.1..12.0
```

</details>

*new*
<details>
<summary>Answer</summary>

```ruby
Range.new(10,100)
Range.new(10.1,11)
```

</details>

*exclusion*
<details>
<summary>Answer</summary>

```ruby
10...20
# 20 is not included in the range
Range.new(10,20,true)
```

</details>

### Range Querying

*get the start element*
<details>
<summary>Answer</summary>

```ruby
my_range = 10..20
my_range.first
my_range.begin
```

</details>

*get then last element*
<details>
<summary>Answer</summary>

```ruby
my_range = 10..20
my_range.last
my_range.end
```

</details>

*check if the range is inclusive or exclusive*
<details>
<summary>Answer</summary>

```ruby
my_range = 10..20
my_range.exclude_end?
# false
my_range1 = 10...20
my_range1.exclude_end?
# true
```

</details>

*check if an element is present with in the range*
<details>
<summary>Answer</summary>

```ruby
my_range = 10...20
my_range.include?(15)
# true
```

</details>

*how does cover? work*
<details>
<summary>Answer</summary>

- if the argument to the method is greater
than the range’s start point and less than its end point (or equal to it, for an inclusive
range), then the range is said to cover the object

```ruby
r = "a".."z"
# => "a".."z"
r.cover?("a")
# => true
r.cover?("abc")
# => true
r.cover?("A")
# => false
```

</details>

**Set**

*How to make set available for usage*
<details>
<summary>Answer</summary>

```ruby
require "set"
```

</details>

*How does it maintain uniqueness internally*
<details>
<summary>Answer</summary>

- It uses a hash internally

</details>

### Creation

*Create a set*
<details>
<summary>Answer</summary>

- accepts any object that has each or each_entry method

```ruby
a = Set.new([1,2,3])
```

</details>

*create a set by passing a code block to the constructor*

<details>
<summary>Answer</summary>

```ruby
require "set"
names = ["David", "Yukihiro", "Chad", "Amy"]
#=> ["David", "Yukihiro", "Chad", "Amy"] -->
name_set = Set.new(names) {|name| name.upcase }
# => #<Set: {"AMY", "YUKIHIRO", "CHAD", "DAVID"}>
```

</details>

*create set from a hash*
<details>
<summary>Answer</summary>

```ruby
require "set"
h = {'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine', 12 => 'dodecine'}
Set.new(h)
#  => #<Set: {["dog", "canine"], ["cat", "feline"], ["donkey", "asinine"], [12, "dodecine"]}>
Set.new(h) {|key, val| val.capitalize}
# => #<Set: {"Canine", "Feline", "Asinine", "Dodecine"}>
```

</details>

*insert an element to set*
<details>
<summary>Answer</summary>

```ruby
require "set"
s = Set.new
# => #<Set: {}>
s << "apple"
#<Set: {"apple"}>
```

</details>

*what's the method alias for inserting*
<details>
<summary>Answer</summary>

- add

</details>

*how to delete*
<details>
<summary>Answer</summary>

- my_set.delete(element)

</details>

*what happens when the element deleted is not present*
<details>
<summary>Answer</summary>

- it doesn't raise any error like the << method

</details>

*what's the difference between add and add?*
<details>
<summary>Answer</summary>

- add always returns the set if the element is getting added or not
- add? will return nil if the element is not added

</details>

*what are the operations supported between two sets*
<details>
<summary>Answer</summary>

- intersection => &
- union => |
- difference => -
- exlusive union => ^
- subset
- superset

</details>
