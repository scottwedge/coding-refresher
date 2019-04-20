# TOC

<!-- TOC -->
- [TOC](#toc)
  - [DataTypes](#datatypes)
  - [Truthy and Falsy values](#truthy-and-falsy-values)
  - [Check for null values](#check-for-null-values)
    - [check if variable, method or class is defined](#check-if-variable-method-or-class-is-defined)
    - [check if a variable has any value](#check-if-a-variable-has-any-value)
    - [check if array is empty](#check-if-array-is-empty)
    - [check if hash is empty](#check-if-hash-is-empty)
  - [Sentinal Values](#sentinal-values)
    - [INFINITY](#infinity)
  - [String Mutability](#string-mutability)
  - [Conditional Statements](#conditional-statements)
    - [IF..ELSE](#ifelse)
    - [SWITCH](#switch)
  - [Loops - Procedural](#loops---procedural)
    - [while](#while)
  - [Loops - Functional](#loops---functional)
    - [map (alias - collect - came from smalltalk)](#map-alias---collect---came-from-smalltalk)
    - [reduce (alias - inject)](#reduce-alias---inject)
    - [find (alias - detect)](#find-alias---detect)
    - [select](#select)
    - [reject](#reject)
  - [Pass by Value vs Pass by Reference](#pass-by-value-vs-pass-by-reference)
  - [Scoping](#scoping)
  - [Arrays](#arrays)
    - [must know methods](#must-know-methods)
    - [methods and complexities](#methods-and-complexities)
    - [Filling Arrays with default values](#filling-arrays-with-default-values)
    - [each and each_with_index](#each-and-eachwithindex)
  - [Hash](#hash)
    - [implementation details](#implementation-details)
  - [Set](#set)
  - [Queue](#queue)
  - [Threads](#threads)

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

### check if a variable has any value

```ruby
my_val.nil?
# returns true or false
```

- since only *nil* and *false* evaluates to false, different object should be checked differently

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

## String Mutability

- Except Boolean, Numeric, nil, and Symbol all objects are mutable
- strings are mutable in ruby
- behaves just like any other object

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

|method name | complexity | Why | Source |
|------------|------------|-----|--------|
| uniq , uniq! | O(n)     | uses hash internally | |
| push , pop | O(n)       | amortized | |
| shift, unshift | O(n)   | amortized | [ref](https://bobhutchison.wordpress.com/2006/09/23/rubys-arrayshift-is-shifty/) |
| slice, splice |

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

### implementation details

- https://anadea.info/blog/how-hash-table-works-ruby-examples
- https://www.rubyguides.com/2017/02/hash-tables-explained/

## Set


## Queue

## Threads