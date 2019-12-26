# Chapter 8

*What are scalar and non-scalar objects with respect to ruby and generally in programming?*
<details>
<summary>Answer</summary>

- Scalar objects are single dimensional objects which essentially represent a single value
- all other objects which behave like a collection are non scalar objects

</details>

*what are scalar objects in Ruby. List them of the following categories*
<details>
<summary>Answer</summary>

- String
- Symbol
- Integer
- Floating Point numbers
- Time, Date, DateTime

</details>

## String

### String literals with %char

*Difference between single quoted string and double quoted string*
<details>
<summary>Answer</summary>

- String interpolation is possible with double quoted string
- String interpolation is not possible with single quoted string

</details>

*how to use %q and %Q. Give examples for each and what are the advantages of using it?*
<details>
<summary>Answer</summary>

- using this format doesn't require escaping special characters
- %Q{} and %{} both create double quoted string

```ruby
single_q_str = %q{This is a multi line
string spanning accross different lines
I can 'quotes' without escaping it
I can even use {} here as long as they are in pairs
}
puts single_q_str

double_q_str = %Q{This is a multi line double quoted string
string spanning accross different lines
I can 'quotes' without escaping it
I can even use {} here as long as they are in pairs
I can also interpolate here ==> #{single_q_str}
}
puts double_q_str
```

</details>

*what other de limitters can be used*
<details>
<summary>Answer</summary>

- any paired brackets => [], {}, (), <>
- literally any symbol you can find on the keyboard in pairs
- but it is conventional to use paired brackets [] or {} or sometimes ()

```ruby
puts %q-my string-
puts %q=my string=
puts %q*my string*
puts %q'my string'
```

</details>

*when can you use delimiters inside this format string ? Give examples*
<details>
<summary>Answer</summary>

- when the delimiter is a bracket, as long as it occurs in pairs %char format won't break.

```ruby
%q{this is {string} with delimiter inside}
%Q{this is {string} with delimiter inside}
```

</details>

### HEREDOC

*What's the common rule for heredoc. 1. Normal string block. 2. sql statements*
<details>
<summary>Answer</summary>

- The normal convention is to use **EOM** (end of message). But any label is accepted
- the end of heredoc label should always be at the beginning and the only thing present in that line

```ruby
str = <<EOM
This is a normal here doc string
It is by default a doudble quoted string
So the stuffs like string interpolation works
EOM

sql = <<SQL
select
  id,
  name
from
  employees
where
  dept_id = (
    select id from departments where name = 'finance'
  )
SQL
```

</details>

*what's the default return value of heredoc*
<details>
<summary>Answer</summary>

- The string that was defined in here doc

</details>

*how to make here doc single quoted*
<details>
<summary>Answer</summary>

- using single quotes around the label <<**'**EOM**'**

```ruby
str = <<'EOM'
This is a single quoted string
Here \n will come as \n itself
without getting escaped
EOM
```

</details>

*use heredoc with flush left option*
<details>
<summary>Answer</summary>

- This enables the ending label to present anywhere in the line ignoring whitespace

```ruby
str = <<'EOM'
This is a single quoted string
Here \n will come as \n itself
without getting escaped
      EOM
puts str
```

</details>

*squiggly heredoc*
<details>
<summary>Answer</summary>

- This enables heredoc to be defined inside methods with indendation.
- The white space before the start of string is stripped

```ruby
class RubyWelcomeWagon
  def message
    <<-EOM
      Welcome to the world of Ruby!
      We're happy you're here!
    EOM
  end
end
RubyWelcomeWagon.new.message
```

</details>

*use heredoc in array assignment*
<details>
<summary>Answer</summary>

```ruby
my_arr = [1, 2, 3, <<~EOM, "some string"]
  What follows is string literal definition
  some long ass string as an array element
  may be even a big paragraph
EOM
puts my_arr

</details>

*use heredoc in method calling, passing arguments*
<details>
<summary>Answer</summary>

```ruby
do_something_with_args(a, b, <<~EOM)
  http://some_very_long_url_or_other_text_best_put_on_its_own_line
EOM
```

</details>

*call a method on here doc return value*
<details>
<summary>Answer</summary>

```ruby
num = <<EOM.to_i * 100
121
EOM

str = <<EOM.downcase
I WoUlD Like a NoRMAl StrINg
```

</details>

### versatils [] method

*consider a variable a = "Ruby is a cool language." Answer the following questions*

*get the character at index 1. should pring R*
<details>
<summary>Answer</summary>

```ruby
puts a[1]
```

</details>

*get the character at 2nd position from last.(use negative index). should print "e"*
<details>
<summary>Answer</summary>

```ruby
puts a[-2]
```

</details>

## substring operations

*a[m,n] - what does m and n mean here. print "cool"*
<details>
<summary>Answer</summary>

- m - starting index
- n - number of characters to be taken into account

```ruby
a[10, 4]
# "cool"
```

</details>

*a[m..n] - what does m and n mean here. print "cool" with the same.*
<details>
<summary>Answer</summary>

- m - starting index
- n - ending index
- both m and n inclusive

```ruby
a[10..14]
# "cool"
```

</details>

*what's the only allowed direction to form substring with []?*
<details>
<summary>Answer</summary>

- It's always from left to right.
- The start could be by positive or negative index but the direction will always be left to right.

</details>

*use negative index - at ending, - at starting, - at both beginning and ending*
<details>
<summary>Answer</summary>

```ruby
# at ending
a[15..-1]
# at starting
a[-9..23]
# at both beginning and ending
a[-9..-1]
# all of this prints "language"
```

</details>

*use explicit substring search instead of using index to get a string. what does it return if not found*
<details>
<summary>Answer</summary>

- it returns the string if found
- it returns nil otherwise

```ruby
a["cool"]
# "cool"
a["English"]
# nil
```

</details>

*use regex to find a substring*
<details>
<summary>Answer</summary>

```ruby
a[/c[o]{2}l/]
# cool
a[/c[o]{2}ls/]
# nil
```

</details>

*replace the substring "cool" with "great"*
<details>
<summary>Answer</summary>

```ruby
a["cool"] = "great"
# Ruby is a great language
```

</details>

*replace "." at the end with "!"*
<details>
<summary>Answer</summary>

```ruby
a[-1] = "!"
```

</details>

*use range to replace part of the string*
<details>
<summary>Answer</summary>

```ruby
a = "Ruby is a cool language"
a[8..14] = "the greatest "
puts a
# Ruby is the greatest language
```

</details>

*what's the alias method for []*
<details>
<summary>Answer</summary>

- slice

</details>

*remove the substring "cool" by using slice!*
<details>
<summary>Answer</summary>

```ruby
a = "Ruby is a cool language"
a.slice!("cool")
puts a
# Ruby is a  language
```

</details>

*what's the difference between "+" and "<<" w.r.t strings*
<details>
<summary>Answer</summary>

- "+" always creates a new string
- "<<" adds on to the existing string.

</details>

*create new string using interpolation*
<details>
<summary>Answer</summary>

```ruby
s1 = "another string"
s2 = "getting stuff from #{s1}"
```

</details>

### query methods

#### boolean methods
*to check if the string contains a substring*
<details>
<summary>Answer</summary>

```ruby
str = "this is a string"
str.include?("string")
# returns true
```

</details>

*to check if the string starts with*
<details>
<summary>Answer</summary>

```ruby
str = "this is a string"
str.start_with?("this")
```

</details>

*to check if the string ends with*
<details>
<summary>Answer</summary>

```ruby
str = "this is a string"
str.end_with?("string")
```

</details>

*to check if the string is empty*
<details>
<summary>Answer</summary>

- it will return true for a string with white space " " 

```ruby
str = "this is a string"
str.empty?
```

</details>

### Querying about string content

*get the length or size of the string*
<details>
<summary>Answer</summary>

```ruby
str = "this is a string"
str.size
str.length
```

</details>

*how count method works and what kind of parameters does it accept?*
<details>
<summary>Answer</summary>

- the count method simply counts all the characters passed into it.
- the characters can be passed as a string
- it also accepts two forms of characters
    1. character ranges like a-d. These are case sensitive
    2. It also accepts negation before any char meaning except those char list ^
- when passed a second argument, it takes the intersection of all the chars in list and counts for only those. for eg str.count("abc","ba") will count occurences of only *a and b*

</details>

*count single character*
<details>
<summary>Answer</summary>

```ruby
str = "ruby is a cool language"
str.count("a")
```

</details>

*count a bunch of characters*
<details>
<summary>Answer</summary>

```ruby
str = "ruby is a cool language"
str.count("ag")
```

</details>

*count a range of characters*
<details>
<summary>Answer</summary>

```ruby
str.count("a-g")
```

</details>

*count of characters that are not matching the given characters*
<details>
<summary>Answer</summary>

- ^ this works only at the beginning of the string

```ruby
str.count("^g")

```

</details>

*count include multiple sets of query string seperated by commas*
<details>
<summary>Answer</summary>

```ruby
string.count("ag-m", "^l")
```

</details>

*index and rindex method*
<details>
<summary>Answer</summary>

- index - returns the first index from left
- rindex - returns the first right index from left

</details>

*get ordinal code of a character and get character of ordinal code*
<details>
<summary>Answer</summary>

```ruby
"a".ord
# 97
97.chr
# "a"
```

</details>

*when you use ordinal code method on string longer than 1 what does it return*
<details>
<summary>Answer</summary>

- it returns the ordinal character of first string

```ruby
"abc".ord
# 97
```

</details>

### String Comparison

*what module is included in string class to enable this ?*
<details>
<summary>Answer</summary>

- Comparable

</details>

*what would "a" <=> "b" return*
<details>
<summary>Answer</summary>

- -1

</details>

*how == works for strings?*
<details>
<summary>Answer</summary>

- if the content of two strings are same it returns true. This is the most common.

</details>

*eql?*
<details>
<summary>Answer</summary>

- works same as ==

</details>

*equal?*
<details>
<summary>Answer</summary>

- same as the equal on Object
- only if the compared strings are the same object reference.

</details>

### String transformations
  
#### casing  
*upper case*
<details>
<summary>Answer</summary>

- upcase

</details>

*lower case*
<details>
<summary>Answer</summary>

- downcase

</details>

*upcase first character alone*
<details>
<summary>Answer</summary>

- capitalize

</details>

*swap the case of every character*
<details>
<summary>Answer</summary>

- swapcase

</details>

#### formatting

*add empty space at the beginning*
<details>
<summary>Answer</summary>

- expands the size of the string to the given length by adding extra spaces in left

```ruby
"abc".rjust(5)
#  abc
```

</details>

*add empty space at the end*
<details>
<summary>Answer</summary>

```ruby
"abc".ljust(5)
# abc
```

</details>

*use some other character for padding*
<details>
<summary>Answer</summary>

```ruby
"abc".rjust(5,"*")
#  **abc
```

</details>

*pad / justify extra characters in the center*
<details>
<summary>Answer</summary>

```ruby
"abc".center(5,"*")
#  *abc*
```

</details>

#### content

*strip methods*
<details>
<summary>Answer</summary>

- strip
- lstrip
- rstrip

</details>

*chop vs chomp*
<details>
<summary>Answer</summary>

- chop - removes the last character irrelevant of what it is
- chomp - removes the last new line character
- chomp("string") - removes the given string if it is present at the end

</details>

*make a string empty*
<details>
<summary>Answer</summary>

- my_string.clear
- it resets the string to ""

</details>

*replace*
<details>
<summary>Answer</summary>

- replaces the original value with supplied string

```ruby
s = "(to be given later)"
s.replace("ruby is cool")
puts s
# ruby is cool
```

</details>

*use encryption method on string*
<details>
<summary>Answer</summary>

- crypt method uses DES algo.
- it requires a string >= 2byte as seed

</details>

*get next highest string*
<details>
<summary>Answer</summary>

- succ

```ruby
"azz".succ
# baa
"abc".succ
# abd
```

</details>


#### string conversions

*to integer of certain base*
<details>
<summary>Answer</summary>

- to_i => decimal system by default
- to_i(base)

</details>

*to decimal*
<details>
<summary>Answer</summary>

- "100".to_i(10) - this is implicit

</details>

*to octal*
<details>
<summary>Answer</summary>

- "100".oct

</details>

*to hexadecimal*
<details>
<summary>Answer</summary>

- "100".hex

</details>

*to float*
<details>
<summary>Answer</summary>

- "123.11".to_f

</details>

*to symbol*
<details>
<summary>Answer</summary>

- to_sym

</details>

#### Encoding

*print the current encoding used*
<details>
<summary>Answer</summary>

```ruby
puts __ENCODING__
```

</details>

*what is the default encoding of ruby 2*
<details>
<summary>Answer</summary>

- UTF-8

</details>

*how to set encoding of a file*
<details>
<summary>Answer</summary>

- with magic comment at the beginning of a file

```ruby
# encoding: UTF-8
```

</details>

*check the curent encoding of a string*
<details>
<summary>Answer</summary>

```ruby
"abc".encoding
```

</details>

*convert from one encoding to other*
<details>
<summary>Answer</summary>

```ruby
"abc".encode("ASCII")
```

</details>

*convert a string from one encoding to another replacing the original string*
<details>
<summary>Answer</summary>

```ruby
"abc".encode!("UTF-8")
```

</details>

*How to include unicode character in any string*
<details>
<summary>Answer</summary>

- \uTHE_UNICODE_CHARACTER

```ruby
"This is euro symbol \u20AC"
```

</details>

## Symbols

*create symbol with literal syntax*
<details>
<summary>Answer</summary>

```ruby
:my_symbol
```

</details>

*create symbol with a string containing spaces*
<details>
<summary>Answer</summary>

```ruby
:"my symbol"
"my symbol".to_sym
```

</details>

*alias for .to_sym method*
<details>
<summary>Answer</summary>

- intern

</details>

*convert symbol to its string rep*
<details>
<summary>Answer</summary>

```ruby
:abc.to_s
# "abc"
```

</details>

*Similarity of Symbols with Integer*
<details>
<summary>Answer</summary>

- Like integer, symbols cannot created by calling new method on its class. Eg Integer.new or Symbol.new
- Symbols come into existence on their first usage and the same reference is used every where. Like integer, how many ever times a number is used, the object_id remains the same through out unlike strings which creates a new string object every time. Eg: "abc".object_id and "abc".object_id will be different but :abc will always be same.
- Symbols are unique and immutable like integers

</details>

*Why should you use grep to look up symbol table instead of include?*
<details>
<summary>Answer</summary>

- if we were to use Symbol.all_symbols.include?(:abc). Just by mentioning :abc, :abc will come into existence.
- so it will always return true. it's better to use grep

```ruby
Symbol.all_symbols.grep(/abc/)
```

</details>

*look up ruby's symbol table to find the variable you created*
<details>
<summary>Answer</summary>

```ruby
my_variable = "some value"
Symbol.all_symbols.grep(/my_variable/)
```

</details>

*what are the two common use cases for symbol*
<details>
<summary>Answer</summary>

1. using in hash keys since it's faster
2. in method namings.
    1. in send method some_object.send(:my_method)
    2. in attr_* class like attr_accessor :my_state_1

</details>

*special way of writing hash keys when using symbols*
<details>
<summary>Answer</summary>

```ruby
my_hash = { name: "Deadpool", type: "R-Rated"}
```

</details>

*Why is there no point in using some_object.send(method_name.to_sym)*
<details>
<summary>Answer</summary>

- ruby internally converts the strings

</details>

## Numbers

*what's the parent class of Integer and Float class*
<details>
<summary>Answer</summary>

- Numeric

</details>

*How operators work with numeric data ?*
<details>
<summary>Answer</summary>

- All operators are actually method. For eg : 1 + 2 is actually 1.+(2)

</details>


## Times and Dates

*what are the libraries that must be included for date and time functionalities*
<details>
<summary>Answer</summary>

```ruby
require "date" # gives Date and DateTime classes
require "time" # gives additional functionalities to Time class
```

</details>

*get the current time stamp*
<details>
<summary>Answer</summary>

```ruby
Time.now
Time.new
```

</details>

*get the current time stamp with DateTime*
<details>
<summary>Answer</summary>

```ruby
require "date"
DateTime.now
Date.today
```

</details>