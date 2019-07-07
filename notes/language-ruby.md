# TOC

<!-- TOC -->
- [TOC](#TOC)
  - [DataTypes](#DataTypes)
  - [Truthy and Falsy values](#Truthy-and-Falsy-values)
  - [Check for null values](#Check-for-null-values)
    - [check if variable, method or class is defined](#check-if-variable-method-or-class-is-defined)
    - [check if variable has any value](#check-if-variable-has-any-value)
    - [check if string is empty](#check-if-string-is-empty)
    - [check if array is empty](#check-if-array-is-empty)
    - [check if hash is empty](#check-if-hash-is-empty)
  - [Sentinal Values](#Sentinal-Values)
    - [INFINITY](#INFINITY)
    - [convert to 32 bit signed integers](#convert-to-32-bit-signed-integers)
  - [Strings](#Strings)
    - [String Mutability](#String-Mutability)
    - [Looping Strings](#Looping-Strings)
      - [each_char](#eachchar)
      - [to char array](#to-char-array)
      - [each_char with_index](#eachchar-withindex)
    - [Strings and ASCII](#Strings-and-ASCII)
      - [convert string to unicode array](#convert-string-to-unicode-array)
      - [convert char to ascii value](#convert-char-to-ascii-value)
      - [sum of ascii values of string](#sum-of-ascii-values-of-string)
      - [ascii to char](#ascii-to-char)
    - [Useful methods](#Useful-methods)
      - [include?](#include)
  - [Conditional Statements](#Conditional-Statements)
    - [IF..ELSE](#IFELSE)
    - [SWITCH](#SWITCH)
  - [Loops - Procedural](#Loops---Procedural)
    - [while](#while)
  - [Loops - Functional](#Loops---Functional)
    - [map (alias - collect - came from smalltalk)](#map-alias---collect---came-from-smalltalk)
    - [reduce (alias - inject)](#reduce-alias---inject)
    - [find (alias - detect)](#find-alias---detect)
    - [select](#select)
    - [reject](#reject)
  - [Pass by Value vs Pass by Reference](#Pass-by-Value-vs-Pass-by-Reference)
  - [Scoping](#Scoping)
  - [Arrays](#Arrays)
    - [must know methods](#must-know-methods)
    - [methods and complexities](#methods-and-complexities)
    - [Filling Arrays with default values](#Filling-Arrays-with-default-values)
    - [each and each_with_index](#each-and-eachwithindex)
  - [Hash](#Hash)
    - [implementation details](#implementation-details)
  - [Set](#Set)
  - [Queue](#Queue)
  - [Threads](#Threads)

<!-- /TOC -->

## DataTypes

- Booleans
    - *true* - TrueClass
    - *false* - FalseClass
- Symbols
- Numbers
- Strings
- Arrays
- Hashes
- Set (needs to include library)
- Queue (present in Thread::Queue)

## Truthy and Falsy values

- falsy values = **nil** and **false**
- everything else is true. even including
    - 0 - numeric zero (Integer or otherwise)
    - "" - Empty strings
    - "\n" - Strings containing only whitespace
    - [] - Empty arrays
    - {} - Empty hashes

- use !! double bang, to convert any value to truthy or falsy values

```ruby
puts !!my_value
```

## Check for null values

### check if variable, method or class is defined

- defined? is a keyword
- returns **nil** or **string described what the variable is**

```ruby
defined? my_val
# returns local-variable, method or constant
```

### check if variable has any value

```ruby
my_val.nil?
# returns true or false
```

- since only *nil* and *false* evaluates to false, different object should be checked differently

### check if string is empty

```ruby
my_val = ""
my_val.empty?
# returns true
```

> NOTE : empty? is not part of Numbers

### check if array is empty

```ruby
my_array = []
my_array.empty?
# same as my_array.length == 0
```

### check if hash is empty

```ruby
my_hash = {}
my_hash.empty?
# same as my_hash.length == 0
```

## Sentinal Values

### INFINITY

```ruby
Inf = Float::INFINITY
NegInf = -Float::INFINITY

require "bigdecimal"
BigDecimal::INFINITY
```

### convert to 32 bit signed integers

```ruby
my_num = Array(my_num).pack('l').unpack('l').first
#   l         | Integer | 32-bit signed, native endian (int32_t)
#   q         | Integer | 64-bit signed, native endian (int64_t)
```

## Strings

### String Mutability

- Except Boolean, Numeric, nil, and Symbol all objects are mutable
- strings are mutable in ruby
- behaves just like any other object

```ruby
x = "abc"
x.object_id
# 797419909313
x[0] = "ap"
x
# apbc
x.object_id
# 797419909313
```

- the object_id doesn't change

### Looping Strings

#### each_char

```ruby
s = "abcd"
s.each_char do |val|
# use char
end
```

#### to char array

```ruby
s = "abcd"
s.chars
# returns ["a", "b", "c", "d"]
# shortcut for s.each_char.to_a
```

#### each_char with_index

```ruby
s = "abcd"
s.each_char.with_index do |val, index|
# use char val and index
end
```

### Strings and ASCII

#### convert string to unicode array

- returns unicode array (in utf-8 first 127 are same as ascii)

```ruby
s = "abcd"
s.codepoints
# returns array [97, 98, 99, 100]
```

#### convert char to ascii value

- returns ascii code of first character in a string

```ruby
s = "a"
s.ord #=> 97
s = "abcd"
s.ord #=> 97
```

#### sum of ascii values of string

```ruby
s = "a"
s.sum #=> 97
s = "abcd"
s.sum #=> 394
```

#### ascii to char

```ruby
97.chr #=> returns a
```

### Useful methods

#### include?

## Conditional Statements

### IF..ELSE

```ruby
if condition
  puts "some stuff"
elsif condition
  puts "some stuff"
else condition
  puts "some stuff"
end
```

### SWITCH

```ruby
case x
when 1..5
  "It's between 1 and 5"
when 6
  "It's 6"
when "foo", "bar"
  "It's either foo or bar"
when String
  "You passed a string"
else
  "You gave me #{x} -- I have no idea what to do with that."
end
```

## Loops - Procedural

### while

```ruby
counter = 0
while(counter < 100)
  counter += 1
end
```

## Loops - Functional

- map, reduce, find, select, reject

### map (alias - collect - came from smalltalk)

```ruby
[1,2,3,4,5,6,7,8,9,10].map{|e| e*3 }
# returns [3, 6, 9, 12, 15, 18, 21, 24, 27, 30]
```

### reduce (alias - inject)

```ruby
start_val = 0
[1,2,3,4,5].reduce(start_val) {|accumulator, current| accumulator + current }
# start val is optional
# returns 15
```

### find (alias - detect)

```ruby
[1,2,3,4,5,6,7,8,9,10].find{|el| el / 2 == 2 }
# returns 4
```

### select

```ruby
[1,2,3,4,5,6,7,8,9,10].select{|el| el%2 == 0 }
# returns [2,4,6,8,10]
```

### reject

```ruby
[1,2,3,4,5,6,7,8,9,10].reject{|e| e==2 || e==8 }
# returns [1, 3, 4, 5, 6, 7, 9, 10]
```

## Pass by Value vs Pass by Reference

- since ruby doesn't have primitive data types and everything is an object, everything is passed by reference.
- However only the immutable objects Boolean, Numeric, nil, and Symbol remain un affected by changes that happens inside the function.

## Scoping

## Arrays

### must know methods

- push, pop
- shift, unshift
- length
- insert
- delete, delete_at, delete_if
- clear
- include?
- find_index
- join
- compact - remove nil elements
- flatten
- permutation
- combination
- slice
- splice
- sort, sort_by
- uniq, unique!

### methods and complexities

| method name    | complexity | Why                  | Source                                                                           |
| -------------- | ---------- | -------------------- | -------------------------------------------------------------------------------- |
| uniq , uniq!   | O(n)       | uses hash internally |                                                                                  |
| push , pop     | O(n)       | amortized            |                                                                                  |
| shift, unshift | O(n)       | amortized            | [ref](https://bobhutchison.wordpress.com/2006/09/23/rubys-arrayshift-is-shifty/) |
| slice, splice  |

insert(pos, element1, element2, ...)

### Filling Arrays with default values

```
default_value = my_val
[default_value] * n_times
```

NOTE : don't use Array.new(size, value) since same reference value will copied to all array indices.

### each and each_with_index

```ruby
arr.each_with_index do |element, index|
  # do something with element and indexs
end
```

## Hash

```
Hash.new(default_value)
```

### implementation details

- https://anadea.info/blog/how-hash-table-works-ruby-examples
- https://www.rubyguides.com/2017/02/hash-tables-explained/

## Set


## Queue

## Threads