## DataTypes

- Booleans
    - *true* - TrueClass
    - *false* - FalseClass
- Symbols
- Numbers
- Strings
- Arrays
- Hashes

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

### methods and complexities

|method name | complexity | Why | Source |
|------------|------------|-----|--------|
| uniq , uniq! | O(n)     | uses hash internally | 

### looping

#### each and each_with_index

