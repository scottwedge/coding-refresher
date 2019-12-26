# Chapter 7

*what are the classes that provide literal syntax (total 7)*

<details>
<summary>Answer</summary>

1. String
2. Symbol
3. Array
4. Range
5. Hash
6. Regexp
7. Proc (lambda)

</details>


*Give literal syntax examples for the following*
    - *Regexp*
    - *Range*
    - *Proc*
    - *Symbol *
    - *Hash*
    - *Array*
    - *String*
<details>
<summary>Answer</summary>

```ruby
# Regexp
/abc/
# Range
0..100
# Proc
->(x,y) { x * y }
# Symbol
:my_symbol
# Hash
{ 
    "New York": "NY",
    "Bangalore": "BGLR"
}
# Array
[1, 2,"a", "b"]
# String
"some value"
```

</details>

*how would the actual method syntax look for 1 + 2*

<details>
<summary>Answer</summary>

```ruby
def my_object.+(val)
  self + val
end
```

</details>

*how operators are methods in ruby ?*
<details>
<summary>Answer</summary>

- Any operator in ruby is actually a method defined on a object
- Because of consistent syntactic sugar methods like +, - look like operators

</details>

*how does ruby allow you define custom functionality for operators*
<details>
<summary>Answer</summary>

- this is non practical usage.
- it is left to the user to define sensible operations

```ruby
class CustObj
  def +(obj)
    "Adding some stuff"
  end
end
a = CustObj.new
b = CustObj.new
puts a + b
```

</details>

*create a class called Account with an attribute called balance. Define functionality for + and -, so balance can be added/ subtracted with any amount. Explain how this is possible*

<details>
<summary>Answer</summary>

```ruby
class Account
  attr_accessor :balance
  def initialize(amount)
    self.balance = amount
  end

  def +(amount)
    self.balance += amount
  end

  def -(amount)
    self.balance -= amount
  end

  def to_s
    self.balance.to_s
  end
end

my_account = Account.new(100)
my_account += 100
puts my_account
my_account -= 10
puts my_account
```

- Because of consistent syntactic sugar with assignment defining methods like this is possible

</details>

*Any operator can be defined as a method in Ruby. What are the only two operators that can't be overridden*
<details>
<summary>Answer</summary>

1. &&
2. ||

</details>

*create a class called Banner with attribute text. Define unary operator +, -, ! which will mean upcase, downcase and reverse of the text respectively.*
<details>
<summary>Answer</summary>

```ruby
class Banner
  attr_accessor :text
  def initialize(text)
    self.text = text
  end

  def to_s
    text
  end

  def +@
    self.text.upcase
  end

  def -@
    self.text.downcase
  end

  def !@
    self.text.reverse
  end
end
my_banner = Banner.new "This is a Banner"
puts +my_banner
puts -my_banner
puts !my_banner
```
</details>

*What does bang at the end of method name means ?*
<details>
<summary>Answer</summary>

- usually it means destructive behavior or meant as a warning to the user

</details>

*Whats the recommended usage of bang at the end of methods?*
<details>
<summary>Answer</summary>

- Use it when there is a non bang method with the same method name like upcase and upcase!.
- Just because it does something destructive don't name it with !. For example clear method on string resets the string to empty string however it is not named as clear!

</details>

## to_* family

*What are places where to_s is called automatically?*
<details>
<summary>Answer</summary>

- wherever to_s is called explicitly
- when calling puts
- when using string interpolation

</details>

*At what level is to_s defined ?*
<details>
<summary>Answer</summary>

- to_s is defined at the object level so all object has this method
- it can be over-ridden by the class to output a user friendly version of the object

```ruby
obj = Object.new
#<Object:0x000001011c9ce0>
puts obj
#<Object:0x000001011c9ce0>
def obj.to_s
  "I'm an object!"
end
# :to_s
puts obj
# I'm an object!
```

</details>

*How is to_s different for Array when using puts ?*
<details>
<summary>Answer</summary>

- when an array is passed to puts, it loops each element in the array and calls to_s

</details>

*Is inspect the same as to_s ? How is it different from to_s*
<details>
<summary>Answer</summary>

- like to_s it is defined at the object level so all object by default has this method
- puts uses to_s
- p uses inspect
- inspect is generally used for debugging

</details>

*What is a bare list compared to Array. When * or splat operator is used ?*
<details>
<summary>Answer</summary>

- comma separated values are called bare list
- it's valid only in certain context
- in literal array definition

```ruby
a = [ 1, 3, 4, 5]
# this is actually a bare list passed to []
```

- when passing argument list to a method

</details>

*Does Ruby automatically convert strings to numbers when used with other numbers in operation ?*
<details>
<summary>Answer</summary>

- ruby doesn't automatically convert string to numbers
- it is left to user to do so

</details>

*How does to_i and to_f convert strings to numbers. Give out some examples ?*
<details>
<summary>Answer</summary>

- both to_i and to_f start parsing for numbers in the string
- as long it sees a number it converts
- when it encounters the first non number char it discards the rest from that point on

```ruby
"1234c".to_i
# 1234
"abc".to_i
# 0
"1234.45c999".to_f
# 1234.45
"x100".to_f
# 0.0
```

</details>

*What is a stricter conversion rule compared to to_i and to_f.*
<details>
<summary>Answer</summary>

- Integer("123")
- Float("123.0")
- Integer and Float raise exception if the string contains anything other than number

</details>

*What are role playing method*

<details>
<summary>Answer</summary>

- role playing methods are the ones getting called during implicit conversion.
- In Ruby it is not actually implicit conversion instead ruby looks for methods **to_str** and **to_ary** based on the context.
- in context of string operations like +, concat, split to_str is called. eg: "abc" + my_obj
- in context of array operations like +, concat

</details>

*Define to_str for an Object and add it to string "Hello". See how it works.*
<details>
<summary>Answer</summary>

```ruby
class MyObject
  def initialize(text)
    @text = text
  end

  def to_str
    @text.to_s
  end
end

obj = MyObject.new("This is from object")
puts "Hello there. " + obj
# Hello there. This is from object
```

</details>

*How to_ary works? Define to_ary for an object and try adding it to an array [1, "hi"]*
<details>
<summary>Answer</summary>

- to_ary is to Array like how to_str is for string


```ruby
class MyObject
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def to_ary
    [@a, @b, @c]
  end
end

obj = MyObject.new(1111, 2222, "some string")
arr = [1, 2, 3]
result = arr + obj
# since arr is at first obj will be implicity converted to array using to_ary
puts result
```

</details>

*Explicit vs Implicit conversion methods and when are they used*
<details>
<summary>Answer</summary>

- short names like the following are explicit conversion. Generally used for explicit type conversion.
    - to_s
    - to_a
    - to_i
    - to_f
    - to_h
- long names are implicit conversion. Applied implicitly. Defined on objects when we want an object to act like a string or array based on certain context
    - to_str
    - to_ary
</details>

**Booleans**

*Empty class evaluates to true or false?*
<details>
<summary>Answer</summary>

- it returns nil so it evaluates to false
- it actually returns the value of last executed expression inside the class definition

```ruby
# irb caputre
class A
end
# => nil

class A

"some value"
end
# => "some value"
```

</details>

*What about method definitions ?*
<details>
<summary>Answer</summary>

- always returns the method definition symbol and always evaluates to true

```ruby
def my_method
end
# => :my_method
```

</details>

*What is the return value of a class definition*
<details>
<summary>Answer</summary>

- It returns the value of last expression in the class definition

</details>

*What are the only instaces of TrueClass and FalseClass*
<details>
<summary>Answer</summary>

- true - a keyword denoting the only instance of TrueClass
- false - a keyword denoting the only instance of Falseclass

</details>

*Every expression in ruby evaluates to true or false ?*
<details>
<summary>Answer</summary>

- yeah, any expression in ruby can be evaluated to either true or false

</details>

*What are only two falsy values in Ruby ? Differentitate expression vs object value*
<details>
<summary>Answer</summary>

- nil
- false

</details>

*what is the only instance of NilClass*
<details>
<summary>Answer</summary>

- nil

</details>

*Even though nil represents emptyness why can it still respond to messages ?*
<details>
<summary>Answer</summary>

- nil is an instance of the class NilClass. 
- It's a special object representing emptiness.

</details>

## Comparison

*==, eql? and equal?*
<details>
<summary>Answer</summary>

- At Object level all three are essentially the same.

</details>

*what's usually left alone to check for absolute object equality*
<details>
<summary>Answer</summary>

- equal is usually left alone
- only if the two objects compared are exactly the same (i.e) with same object reference (object_id), equal will return true

</details>

*How to use the spaceship operator or <=> with Comparable module*
<details>
<summary>Answer</summary>

- including Comparable module gives a suite of comparable capabilities to the class included
- defining spaceship operator gives access to * <, >, >=, <=, ==, != and between?

```ruby
class SomeClass
  include Comparable
  attr_accessor :some_attribute
  def <=>(obj)
    if self.some_attribute < obj.some_attribute
      -1
    elsif self.some_attribute > obj.some_attribute
      1
    else
      0
    end
  end
end
```

</details>

*What are the classes that include Comparable*
<details>
<summary>Answer</summary>

- All numeric classes include Comparable
- String class also includes it

</details>

*Define a class called Bid with attribute estimate. Define the spaceship operator*
<details>
<summary>Answer</summary>

- since numeric class already defines <=>, we can use them directly instead of defining them using if,elsif and else.

```ruby
class Bid
  include Comparable
  attr_accessor :estimate
  
  def initialize(est)
    @estimate = est
  end

  def <=>(other_obj)
    self.estimate <=> other_obj.estimate
  end
end

bid1 = Bid.new(100.0)
bid2 = Bid.new(101)
puts bid1 > bid2
```

</details>

## Reflection

*methods vs singleton_methods*
<details>
<summary>Answer</summary>

- my_obj.methods gives all methods from the method lookup chain
- my_obj.singleton_methods return only the list of methods defined on that particular object

</details>

*what happens if a module is included to the class after an object instance is created.*
<details>
<summary>Answer</summary>

```ruby
str = "I'm a string"
module StrAddons
  def shout
    self.upcase
  end
end
class String
  include StrAddons
end
str.methods.include?(:shout)
```

</details>

*Examine a class to only get the methods that will be available in its instances*
<details>
<summary>Answer</summary>

```ruby
MyClass.instance_methods
String.instance_methods
```

</details>

*How to see instance_methods without the ancestor methods included*
<details>
<summary>Answer</summary>

```ruby
MyClass.instance_methods(false)
```

</details>

*Methods available at instance level to examine the object*
<details>
<summary>Answer</summary>

- my_object.private_methods
- my_object.public_methods
- my_object.protected_methods
- my_object.singelton_methods

</details>

*Methods available at class level to examine the object instances*
<details>
<summary>Answer</summary>

- MyClass.private_instance_methods
- MyClass.protected_instance_methods
- MyClass.public_instance_methods

</details>
