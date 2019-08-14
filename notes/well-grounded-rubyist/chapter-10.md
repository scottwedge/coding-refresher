# Chapter 10 ( Enumerable & Enumerator)

_What's an enumerable object in ruby ?_

<details>
<summary>Answer</summary>

- ruby links the concept of collections with enumerable module
- all classes that include Enumerable module enter into a contract relation. The class will define a method called _each_ and in turn the Enumerable module will give certain capabilities to the objects.

</details>

_Write a proof of concept each (which yields a set of colors) method by including Enumerable_

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

_Boolean methods on the Enumerable object_

<details>
<summary>Answer</summary>

- all
- any
- one
- none
- include

</details>

_How boolean method works_

<details>
<summary>Answer</summary>

- It takes in a code block

</details>

_Will enumerable methods work on the Range 10.1..11.0_

<details>
<summary>Answer</summary>

- It will throw Type error

</details>
    
## Enumerable Search

_find based on code block_

<details>
<summary>Answer</summary>

```ruby
[1,2,3,4,5,6,7,8,9,10].find {|n| n > 5 }
# => 6
```

</details>

_find based on lambda function and code block_

<details>
<summary>Answer</summary>

- find returns nil if not found. to overcome that we can pass a lamba

```ruby
x = lambda { -1 }
[1,2,3,4,5,nil,6,7,8,9,10].find(x) {|n| n.nil? }
# => -1
```

</details>

_use find_all_

<details>
<summary>Answer</summary>

```ruby
x = (1..10).to_a
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
x.find_all {|n| n % 2 == 0}
# => [2, 4, 6, 8, 10]
```

</details>

_select & reject_

<details>
<summary>Answer</summary>

- accepts a block and returns an array of select or what remains after rejection elements

</details>

_what does select and reject return for hash and set_

<details>
<summary>Answer</summary>

- for hash it returns a new hash matching the condition

```ruby
a = { a: 100, b: 200, c:200}
a.select {|key,val| val > 100}
# {b:200, c:300}
```

- for set it returns an array

</details>

_what operator is used for comparison in grep method_

<details>
<summary>Answer</summary>

- it uses === operator internally

```ruby
colors = %w(red orange yellow green blue indigo violet)
# => ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]
colors.grep(/o/)
# => ["orange", "yellow", "indigo", "violet"]
```

</details>

_write grep in terms of select method_

<details>
<summary>Answer</summary>

```ruby
enumerable.select {|element| expression === element }
```

</details>

_How grep is used with a block_

<details>
<summary>Answer</summary>

- each result is passed to the block before returning as result array
- enumerable.grep(expression) {|item| ... }

```ruby
colors = %w(red orange yellow green blue indigo violet)
# ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]
colors.grep(/o/) {|color| color.capitalize }
# ["Orange", "Yellow", "Indigo", "Violet"]
```

</details>

_How grep with block can be represented using select_

<details>
<summary>Answer</summary>

```ruby
enumerable.select {|item| expression === item}.map {|item| ... }
```

</details>

## grouping and partition

_how group_by works_

<details>
<summary>Answer</summary>

- group by takes in a block. The block returns a value. This value is used as a key. All values having the same key will be grouped as an array and assigned as value to the key.

```ruby
colors = %w(red orange yellow green blue indigo violet)
# => ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]
colors.group_by {|color| color.size }
# => {3=>["red"], 6=>["orange", "yellow", "indigo", "violet"],5=>["green"], 4=>["blue"]}
```

</details>

_give example of group_by for hash_

<details>
<summary>Answer</summary>

- similar to array but returns key, value array of arrays.

```ruby
a = { a: 1, b: 11, c: 111, d: 2, e: 22, f: 222}
# => {:a=>1, :b=>11, :c=>111, :d=>2, :e=>22, :f=>222}
a.group_by {|key, val| val.to_s.size}
# {1=>[[:a, 1], [:d, 2]], 2=>[[:b, 11], [:e, 22]], 3=>[[:c, 111], [:f, 222]]}
```

</details>

_partition_

<details>
<summary>Answer</summary>

- partition takes in a block that returns true or false.
- it then returns array of arrays with two elements. the first element in array will correspond to an array of all values passing the test given in block i.e true. the second element will correspond to false.

```ruby
a = (1..10).to_a
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.partition {|val| val.even?}
# => [[2, 4, 6, 8, 10], [1, 3, 5, 7, 9]]
```

</details>

_accessing the first element_

<details>
<summary>Answer</summary>

- accessing first element is always feasible in an Enumerable
- in array, hash (first inserted), range or any enumberable
- enumerable.first gives the first element

</details>

_accessing the last element_

<details>
<summary>Answer</summary>

- accessing the last element might always be not possible as the enumerable might be infinite

```ruby
class Die
  include Enumerable
  def each
    loop do
       yield rand(6) + 1
    end
  end
end
```

- array and range has it though.

</details>

_how min & max work internally_

<details>
<summary>Answer</summary>

- uses the spaceship operator <=> for comparison

</details>

_why min & max are not always possible_

<details>
<summary>Answer</summary>

- for the same reason as last. to determine the min and max, it has loop over internally on all elements
- since there might infinte enumerables it's not possible, as the loop will run for ever

</details>

_min and max with and without block_

<details>
<summary>Answer</summary>

```ruby
%w(Ruby C APL Perl Smalltalk).min
# => "APL"
%w(Ruby C APL Perl Smalltalk).max
# => "Smalltalk

%w(Ruby C APL Perl Smalltalk).min {|a,b| a.size <=> b.size}
# => "C"
%w(Ruby C APL Perl Smalltalk).max {|a,b| a.size <=> b.size
# => "Smalltalk
```

</details>

_difference b/n min,man and min_by, max_by_

<details>
<summary>Answer</summary>

- min_by and max_by always accepts a block
- unlike min and max it just requires one variable

```ruby
%w(Ruby C APL Perl Smalltalk).min {|val| val.size}
# => "C"
%w(Ruby C APL Perl Smalltalk).max {|val| val.size}
# => "Smalltalk
```

</details>

_minmax and minmax_by_

<details>
<summary>Answer</summary>

```ruby
%w{ Ruby C APL Perl Smalltalk }.minmax
# => ["APL", "Smalltalk"]
%w{ Ruby C APL Perl Smalltalk }.minmax_by {|lang| lang.size }
# => ["C", "Smalltalk"]
```

</details>

## looping

_each_

<details>
<summary>Answer</summary>

- this is the versatile method that can be used on all enumerables

</details>

_reverse_each_

<details>
<summary>Answer</summary>

- loops in reverse.
- doesn't work on infinite enumerables

```ruby
[1,2,3].reverse_each {|e| puts e * 10 }
# 10
# 20
# 30
```

</details>

_each_with_index_

<details>
<summary>Answer</summary>

- each_with_index provides additional argument to the block
- this is deprecated in favor of each.with_index

</details>

_each_slice and each_cons_

<details>
<summary>Answer</summary>

- slices to given count
- cons - slides a window of size n till the end is reached

```ruby
array = [1,2,3,4,5,6,7,8,9,10]
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each_slice(3) {|slice| p slice }
# [1, 2, 3]
# [4, 5, 6]
# [7, 8, 9]
# [10]
# => nil
array.each_cons(3) {|cons| p cons }
# [1, 2, 3]
# [2, 3, 4]
# [3, 4, 5]
# [4, 5, 6]
# [5, 6, 7]
# [6, 7, 8]
# [7, 8, 9]
# [8, 9, 10]
# => nil
```

</details>

_map_

<details>
<summary>Answer</summary>

```ruby
arr = ["apple", "orange"]
arr.map {|val| val.upcase}
#  => ["APPLE", "ORANGE"]
```

</details>

_special way of passing a method to map_

<details>
<summary>Answer</summary>

```ruby
arr = ["apple", "orange"]
arr.map(&:upcase)
#  => ["APPLE", "ORANGE"]
```

</details>

_alias for map_

<details>
<summary>Answer</summary>

- collect

</details>

_inject_

<details>
<summary>Answer</summary>

```ruby
[1,2,3,4].inject(0) {|acc,n| acc + n }
# => 10
[1,2,3,4].inject(:+)
# => 10
```

</details>

_cycle_

<details>
<summary>Answer</summary>

- Enumerable#cycle yields all the elements in the object again and again in a loop. If you provide an integer argument, the loop will be run that many times. If you don’t, it will be run infinitely.

```ruby
class PlayingCard
  SUITS = %w(clubs diamonds hearts spades)
  RANKS = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  class Deck
    attr_reader :cards
    def initialize(n=1)
      @cards = []
      SUITS.cycle(n) do |s|
        RANKS.cycle(1) do |r|
          @cards << "#{r} of #{s}
        end
      end
    end
  end
end
```

</details>

_why strings are not enumerable but behaves like an enumerable_

<details>
<summary>Answer</summary>

- String class doesn't include the module Enumerable
- but it has a set of methods which creates enumerables each\_\*

</details>

_different ways of iterating over a string_

<details>
<summary>Answer</summary>

- each_byte
- each_char
- each_codepoint
- each_line

</details>

_how each line is seperated in each_line method_

<details>
<summary>Answer</summary>

- using the global line separator variable \$/
- it is usually "\n"

</details>

## Sorting

_sort_

<details>

- usually used to sort array of objects
- can be called on enumerable collection like array.
- it internally uses <=> for comparison
- sort can also take in a block which overrides the <=> operator defined

</details>

_how to make the objects stored in the array sortable_

<details>
<summary>Answer</summary>

- the objects stored in the array must have <=> operator defined, so that sort can make use of

</details>

_sort_by shortcut_

<details>
<summary>Answer</summary>

```ruby
arr.sort_by(&:to_i)
```

</details>

_Enumerator_

<details>
<summary>Answer</summary>

```ruby

```

</details>

_Difference between Iterator and an Enumerator_

<details>
<summary>Answer</summary>

- enumerator is an object. it is not a collection but simply an object
- iterator is a method that simply loops over

</details>

_Create a simple Enumerator_

<details>
<summary>Answer</summary>

```ruby
e = Enumerator.new do |y|
    y << 1
    y << 2
    y << 3
end

```

</details>

_create an enumerator with manual yield calls_

<details>
<summary>Answer</summary>

```ruby
e = Enumerator.new do |y|
    y.yeild(1)
    y.yeild(2)
    y.yeild(3)
end

```

</details>

_use a range of 1 to 5 instead of manual yields_

<details>
<summary>Answer</summary>

```ruby
e = Enumerator.new do |y|
    (1..5).each {|i| y << i }
end
```

</details>

_enum_for ( method_name, arg1, arg2, arg3)_

<details>
<summary>Answer</summary>

```ruby

```

</details>

_another way of getting enum for an object with imiplicit enumerators_

<details>
<summary>Answer</summary>

```ruby

```

</details>

_create a class CardDeck with suits and cards._

<details>
<summary>Answer</summary>

```ruby

```

</details>

_make cards accessible only via enums so that its not modifiable_

<details>
<summary>Answer</summary>

```ruby

```

</details>

_get the next item in an enumerator_

<details>
<summary>Answer</summary>

```ruby

```

</details>

_get the previous item in an enumerator_

<details>
<summary>Answer</summary>

```ruby

```

</details>

_what is the problem with method chaining_

<details>
<summary>Answer</summary>

```ruby

```

</details>

_how does using enumerator solve the problem with chaining_

<details>
<summary>Answer</summary>

```ruby

```

</details>

_get the index along with the item being enumerated_

<details>
<summary>Answer</summary>

```ruby

```

</details>

_implement ^ operator for string with enumerator_

<details>
<summary>Answer</summary>

```ruby

```

</details>

_make use of lazy enumerator approach to get first 10 items that are divisible by 3 in range 1..Float::INIFINITY_

<details>
<summary>Answer</summary>

```ruby

```

</details>
