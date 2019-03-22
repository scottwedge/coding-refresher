## Chapter 1

- What are ruby identifiers ?
- What's the difference between ruby, Ruby and RUBY ?
- Standard ruby conventions for naming
    - local variable
    - global variable
    - instance variable
    - class variable
    - constants
    - methods
    - keywords
- How to start irb with out line numbers
- How to get input from stream or user ?
- chop vs chomp vs strip
- How to print output ?
- How to read a file ?
- what is the library that should be required for config
- what is the constant where config path is present
- List the ruby installation directory structure
- What's the difference between sitedir and vendordir ?
- what is the global variable that contains the load paths
- What are three ways of loading a file ?
- what's the difference between three ways of loading files?
- How require keeps track of the loaded files ?
- What's the difference between a feature, library and an extension ?
- How many out of the box ruby tools are there ?
- List the out of the box ruby tools?
- How run a ruby program inline in command prompt ?
- How to check syntax of a ruby program ?
- How make ruby program show up warnings 
- What's the difference between -v and --version 
- How to load a library into irb with command line switches ?
- How to turn off echo in irb ?
- What's a namespace in rake task
- Write a task with two namespaces, admin - to clear /tmp directory, and user - to clear tmp directory in home folder with clear descriptions
- How to list all tasks in current dir
- How to install a gem

## Chapter 2

- What is the default object everything belongs to ?
- Create a new object without a class and add methods to it
- What are the only two falsy values in Ruby
- What is interpolation ?
- What is a BasicObject
- How do you list all methods belonging to an object in sorted order
- List 3 useful default methods that belongs to Objects
- How do you check whether an object has a method ?
- Compare if two objects refs are same
- How do you send methods as messages to an Object ?
- Diff b/n send, __ send__ and public_send
- Diff b/n parameter vs arguments
- How to define required argument
- How to define default argument
- How to define optional argument
- What's the only allowed order when using default and optional arguments together
- There can be atmost how many optional arguments per method
- Will R/D/R/D work? if not give examples of valid ones
- What are immediate values in values
- Why the post and pre increment, decreament operators are not present?
- How to freeze an Object ?
- Can contents of frozen objects be modified ?
- Diff b/n dup vs clone
- How ruby identifies whether the identifier encountered is a variable, keyword or method ?

## Chapter 3

- What is a class in ruby ?
- What is re-opening a class ?
- What's the use of re-opening a class ?
- What is over riding a method ?
- What are singleton methods ?
- What are instance variables and how are they linked to states
- What's the initialize method and how to use it
- Special use of (=) in method names
- How ruby interprets = sign in method names
- What is syntactic sugar ?
- What's the return value of methods with = sign irrelevant of what happens inside
- Easier way of getter and setter methods
- Example for read, write, do both with ruby attr_* methods
    - a - read
    - b - write
    - c - both read and write
    - d - use the generic attr
- create a class with initialize and attr methods
- How inheritance works in ruby
- Ruby and multiple inheritance
- how to use superclass method ?
- what is the difference between is_a? and instance_of? method
- What is the BasicObject
- How many methods does the BasicObject have ?
- create an anonymous class with a method that prints "hello" and assign it to a variable x
- Object and Class paradox
- Where are methods like attr_* inherited from ?
- What's the superclass of class ?
- What are class methods
- How is a class method a singleton method ?
- When should one use class methods
- Represent the instance method print_stuffs belonging to a class called Stuff
- Represent the class method say_hello belonging to a class called Greeter
- Why ruby constants aren't really constants ?
- Why ruby doesn't strictly prohibit constant rules ?
- What happens when you re-assign constants ?
- What happens when you modify contents of a constant
- Default constants
    - where is PI is stored
    - how to find the current ruby version
    - how to find the current patch level of the ruby you are using
    - How to find the current ruby revision
    - How to find the current ruby copy right message 
- Where can the methods of an Object come from ?
- what does is_a? method do ?

## Chapter 4

- Difference b/n class and module
- What's a mixin
- Write simple example to use class and module together (StackLike, CargoHold & SuitCase example)
- How would you do the same with classes
- How an Object looks up for methods ? Draw method look up tree path
- How prepend is different from include
- How to use super and method_missing. Write an example class called Person which describes people with their name, friends and hobbies
- When to use Module vs Class
- What's the general naming convention for modules and classes
- How namespaces are used ?

## Chapter 5 : default object self, scope and visibility

- give a brief overview of how self works at top level, class, module and method definitions
- what is recommended way to define class methods
- What happens when a variable name and method name has the same name and how to resolve it
- What's an instance variable of class ?

```
class C
    @x = []
    puts c
end
```

- what global variable contains the name of the start up file
- what global variable contains the process id of the program currently running
- what global variable contains the load path
- where is friendly version of global variables stored
- What is the scope of global variables
- How local scope works. How definition blocks and scope relates
- How scope works for constants ?
- When there is clash with constants from a namespace and ruby built-ins, how is it resolved ?
- How does scope work for class variables ?
- How to make instance variables per class ?
- What are the different method access rules that Ruby provides ?
- What is the rule for private method access ?
- How setter method works in private ?
- How Protected works ?
- How top level methods and private method access are related

## Chapter 6 : Control Fow Techniques

- When is then used in if statement?
- How is if, elsif used in traditional way
- How is if used at the end of statements
- local variable assignments and if statement
- when ruby doesn't issues warning for using assignment in if ?
- how unless is used. Give an example

- How case statement works
- Can case exist without a condition
- How to define equality for objects so it works for case statement
- How to specify multiple condition in when. What logical operator does multiple conditions in when denote
- How to use case in replacement of if. Give an example.
- What's the return value of case statement
- when does the case execution stop ? How does it compare with other languages.

- How loop works
- Single liner loop
- How to exit loop
- What's the functionality of next and break

- times example

- While example
- Begin end while example
- How to use while in a single liner modifiers
- How is single line while different from begin end while
- Until example

- for in example

- What is an iterator method
- How to specify a code block
- Write a custom loop method that imitates inbuilt loop

- What are key components of a method call
- How to call a code block inside method
- What's the difference between curly braces and do end
- How to pass arguments to code block
- Implement times method as my_times for Integer class
- Implement my_each method for array class
- What's the return value of each method
- Define my_each using my_times
- What's the difference between each and map
- Implement simple version of map as my_map
- Implement my_map using my_each

- How does scope work with code blocks
- What are the three types of variables that can be used inside codeblock 
- How to define reserve a local variable for block itself

- Raise these errors

- RuntimeError
- NoMethodError, NameError
- IOError
- Errno::<<errorname>>
- TypeError
- ArgumentError

- What Exception does the default rescue statment capture
- Why should you capture specific exception instead of the default plain rescue
- why is class name specified in raising an exception, rather than the Object
- How to capture the exception object and use the methods they provide
- Why should you return or exit on rescue ?
- How to re-raise an exception
- When do you use ensure ?
- How to create custom exception classess
- Should it inherit from Exception classes or StandardError
- How namespacing is useful with custom exceptions

## Chapter 7

- what are the classes that provide literal syntax (total 7)
- Give literal syntax examples for the following
    - RegExp
    - Range
    - Proc
    - Symbol 
    - Hash
    - Array
    - String
- how would the actual method syntax look for 1 + 2
- how operators are methods in ruby ?
- how does ruby allow you define custom functionality for operators
- create a class called Account with an attribute called balance. Define functionality for + and -, so balance can be added/ subtracted with any amount
- So any operator can be defined as a method in Ruby. What are the only two operators that can't be overridden
- Create a class that has an accessible attribute text. define unary method for + (upcase), - (downcase), ! (reverse)
- What does bang at the end of method name means ?
- Whats the recommended usage of bang at the end of methods?

**to_* family**

- What are places where to_s is called automatically?
- At what level is to_s defined ?
- How is to_s different for Array when using puts ?
- Is inspect the same as to_s ? How is it different from to_s
- what is the display method. Give an example ?
- What is a bare list compared to Array. When * or splat operator is used ?
- Does Ruby automatically convert strings to numbers when used with other numbers in operation ?
- How does to_i and to_f convert strings. Give out some examples ?
- What is a stricter conversion rule compared to to_i and to_f.
- What's a role playing method. Describe w.r.t to_s and to_str. When is to_str implicitly called for the String class.
    - What method is implicitly called when you add two strings.
    - Define to_str for an Object and add it to string "Hello". See how it works.
- How to_ary works ?
    - Define to_ary for an object and try adding it to an array [1, "hi"]

**Booleans**

- Empty class evaluates to true or false?
- What about method definitions ?
- What is the return value of a class definition
- What are the only instaces of TrueClass and FalseClass
- How are true and false special w.r.t.their usage as variables
- Every expression in ruby evaluates to true or false ?
- What are only two falsy values in Ruby ? Differentitate expression vs object value
- what is the only instance of NilClass
- Even though nil represents emptyness why can it still respond to messages ?
- Why is not recommeded to use booleans as method arguments

**Comparison**

- ==, eql? and equal?
- what's usually left alone to check for absolute object equality
- How to use the spaceship operator or <=>
- Where is the spaceship operator defined in
- What are the classes that include Comparable
- Define a class called Bid with attribute estimate. Define the spaceship operator
    - using if/elsif/else
    - using piggybacking of already defined comparable on Numerical class
- What's the advantage of using Comparable module
- How to use between?

**reflection**

- methods vs singleton_methods
- how to get all instance_methods
- How to see instance_methods without the ancestor methods included
- querying objects
    - private_methods
    - public_methods
    - protected_methods
    - singelton_methods
- querying classes for the methods that will present on their object instances
    - MyClass.private_instance_methods
    - MyClass.protected_instance_methods
    - MyClass.public_instance_methods

## Chapter 8

- what are scalar objects in Ruby. List them of the following categories
    - Number
    - Text
    - Time

**String**

- Difference between single quoted string and double quoted string
- how to use %q and %Q. Give examples for each.
    - what other de limitters can be used
    - when can you use de-limitters inside the string ? Give examples
- heredoc
    - what's the default return value of heredoc
    - how to make here doc single quoted
    - use heredoc with flush left option
    - use heredoc
        - array assignment
        - method calling
    - call a method on here doc. write heredoc with a message that removes the initial spaces
- versatile [] method on string. consider a = "Ruby is a cool language."
    - get the character at index 1
    - get the character at 2nd position from last.(use negative index)
    - substring operation
        - a[m,n] - what does m and n mean here. print "cool" with 
        - a[m..n] - what does m and n mean here. print "cool" with the same.
            - what's the only allowed direction
            - use negative index
                - at ending
                - at starting
                - at both
    - use explicit substring search to get a string. what does it return if not found
    - use regex to find a substring
    - replace the substring "cool" with "greatest"
    - replace "." at the end with "!"
    - use range to replace part of the string
    - what's the alias method for []
    - remove the substring "cool" by using slice!
- what's the difference between "+" and "<<" w.r.t strings
- create new string using interpolation
- query methods
    - boolean methods
        - to check if the string contains a substring
        - to check if the string starts with
        - to check if the string ends with
        - to check if the string is empty
    - content
        - count the number of occurences
            - single character
            - a bunch of characters
            - a range of characters
            - of characters that are not matching the given characters
            - include multiple sets of query string seperated by commas
        - use index and rindex method
        - get ordinal code of a character and get character of ordinal code
            - when you use ordinal code method on string longer than 1 what does it return
    - comparison
        - what module is included in string class to enable this ?
        - what would "a" <=> "b" return
        - how == works for strings?
        - eql?
        - equal?
    - string transformations
        - case
            - upper case
            - lower case
            - upcase first character alone
        - formatting
            - add empty space at the beginning 
            - add empty space at the end
            - use some other character for padding
            - pad / justify extra characters in the center
        - content
            - chop
            - chomp
            - strip
            - clear
            - replace
            - use encryption method on string
            - get next highest string
    - string conversions
        - to integer
        - to float
        - to symbol
- Encoding
    - print the current encoding used
    - what is the default encoding of ruby 2
    - how to set encoding of a file
    - check the curent encoding of a string
    - convert from one encoding to other
    - convert the original string from one encoding to another
    - force convert ignoring the transcoding property

**Symbols**

- create symbol with literal syntax
- create symbol with a string containing spaces
- alias for .to_sym method
- convert symbol to its string rep
- Similarity of Symbols with Integer
- Why should you use grep to look up symbol table instead of include?
- look up ruby's symbol table to find the variable you created
- what are the two common use cases for symbol
- special way of writing hash keys when using symbols

**Numbers**

- Tree hierarchy of Numeric inheritance
- When  did ruby unify the Fixnum and Bignum to Integer class
- are all arithmetic operations method ?

**Times and Dates**

- what are the libraries that must be included for date and time functionalities
- what is the default order assumed by Date constructors
- get the current time stamp
- get the current time stamp with DateTime
- format time

## Chapter 9 (Array, Hash, Set, Range)

- print all hash elements with its index
**Arrays**
- creating
    - using new
        - use new to create an array with size 10 and with each element initialzed to "hi"
        - when I modify the string object "hi" what happens ?
        - How to initialize array with each index having it's own object instead of same object reference
    - using []
    - create an array of single quoted string
    - created an array of double quoted string
    - create an array of symbols - single quoted
    - create an array of symbols - double quoted
    - what does try_convert method do ?
        - what are the classes that has this defined ?
            (string, array, hash, io, regexp)
- Array Operations (single element, multiple elements)
    - insert at beginning
    - delete at begining
    - insert at end 
    - delete at end
    - concatenate another array
        - how is it different from +
    - replace
- Array Transformations
    - make the array single dimension
    - reverse the contents of the array
    - join - what's the alias operator for join method
    - remove duplicates from an array
    - remove nil elements from array
    - convert array to hash
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


## Chapter 10 ( Enumerable & Enumerator)

- Enumerable Methods
    - Boolean Methods
        - all
        - any
        - one
        - none
        - include
    - search
        - find based on code block
        - find based on lambda function and code block
        - use find_all
            - select & rejects
            - what does this return in most cases
            - what does it return for hash and set
        - grep method
            - what's the base for grep method?
            - write grep interms of select method
    - grouping and partition
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

## Chapter 11

- RegExp
    - use literal syntax to create an empty regex
    - how to use regex in if statement
    - what's the difference between match method and the =~ operator
    - how to get MatchData object when using =~ operator ($~)
    - how to create a character class
    - special characters that represent character classes
        - all digits
        - all non digits
        - words
        - non wordssp
        - white space
        - non white space
    - match method
        - how to get the entire matched string
            - what's the global variable where this is stored
        - how to get the sub class matched string. how does it work
            - what are the corresponding global variables
            - what's the downside of using global variables for this.
        - how to use array operator [] and capture method on MatchData object to get
            - entire matched string
            - first matched block
            - second matched block and so one
        - how to get the part of string
            - before the match
            - after the match
        - how to get the indexs of the captured string
            - begin
            - end
        - what are named captures and how to use them
    - Quantifiers
        - what are the quantifier symbols
            - zero or one
            - zero or more
            - one or more
            - match any char
        - how make the qunatifiers non greedy.
        - how to specify the number of times a regex must be repeated
            - how to specify a range instead of a fixed number
        - why should quantifiers be always with in the group seperators
    - Anchors
        - beginning of string
            - alternative for symbol
        - end of string
            - alternative for symbol
            - alternative that allows new line to be matched
        - whole word match
    - Assertions
        - look ahead assertions
            - ?=
            - ?!
        - look behind assertions
            - ?<=
            - ?<!
        - conditional matches
            - ?(1)
    - Modifiers
        - case insensitive
        - ignore new lines
        - ignore whitespace
    - String & RegExp
        - interpolate string into pattern
        - how to escape the special chars in string
    - Regexp to string
        - to_s vs inspect
    - methods that accept RegExp
        - scan(//) { optional code block }
        - what does strscan library provide
        - split using regex
        - use matched string in sub method with regex
        - use gsub
        - grep method
            - why does grep accept regexp
            - use === with regexp and string

## Chapter 12

- IO
    - list input, output and error
        - constants
        - globals
            - why does a duplicate of constant exist here
            - change global so everything gets printed to file
            - how to use the default stream when the globals have been re assigned
    - enumerables and IO objects
        - use each on input stream to read a line
        - how does the stream know that it has reached a line
- File
    - read entire content of a file
    - read file line by line using gets
    - read file line by line using readline
    - get all content in array of lines
    - difference between gets and readline
    - read byte by byte
    - read character by character
        - use both get version and read version
    - file handle positions
        - reset position of file handle to start
        - check current position
        - set position
        - seek
            - IO constansts used in seek (IO:: SEEK_SET, SEEK_CUR, SEEK_END)
            - set the position to 20
            - advance poistion from current position by 10
            - set postion from the end
    - CLASS methods
        - read
        - readlines
        - what's the advantage of using class methods
        - system ( low level methods)
            - seek
            - read
            - write
    - Enumerability
        - enumerable methods
        - how is file different from arrays, hashes and other collections with respect to enumerability
- Querying File
    - difference b/n File and FileTest
    - get the size of a file using File and FileTest
    - print the stats of a file
    - check if a file exists
    - check if a file is a directory
    - or the given path is file
    - or a symbolic link
    - check if they are readable, writable or executable
    - size of the file
    - whether the size is zero bytes
    - get the file stats
        - with Stat object
        - with file object
- Querying Directory
    - get all entries of a directory
    - loop through all entries and find the total size of all files in a directory
    - get full path of an entry
    - glob method
        - equivalent of glob method
        - use * wildcard
    - excercise
        - create a directory, traverse to that directory and create a file inside the directory
        - write "This is a test file to the file"
        - print the size and other stats of that file
        - delete that file
        - then go back to the start directory
        - delete the newly created directory
- FileUtils (operating system specific)
    - do rm -rf
    - create a symbolic link (ln -s)
    - copy one file to to another
    - create a directory
    - copy a bunch of files to the created directory
    - move the copied files to another location
    - delete a file
    - use dry run to test
    - use no write mode to delete a file and see what happens
- Pathname
    - get the string representation of the path
    - get the extension of the file
    - get the base name
    - get the directory name of the path
    - go up the directory till root
- StringIO
    - use of temp-file class
    - write a method that accepts (inp_file, out_file, comment_re = /\A\s*#/) read a file assuming it's a program.rb file. remove all comments tand write it to an output file
        - use this method passsing file handles
        - use the same method using StringIO objects
    - what does the open method from open-uri return?

## Chapter 13

- Singleton methods
    - where do the singleton methods reside ?
    - two ways of creatnig singleton methods for an object
    - where the class << object_ref notation most used ?
    - what is the difference between using class << object_ref vs objec_ref.method_name version ?
    - method look up tree re defined with singleton class
    - how does singleton methods defined at class level behave when inherited
    - what does singleton generally mean with regards to design patterns
        - what's the class ruby provies for this purpose
- Modifying Ruby's core classes
    - why is it not recommended to change ruby's core class
        - modifying match method on regexp to always return an array
        - gsub! and sub! examples
    - Additive changes
        - give an example
    - Passthrough changes
        - give the conventional way to do this
    - Additive-Passthrough Hybrid
    - using extend
        - extend at class level
        - class << object_name notation
        - extend method
    - refined modules
        - refine class_name do code_block end
        - using method_name
- Using BasicObject
    - explore Builder class in XML library
    - write a class that inherits BasicObject

## Chapter 14

- Proc
    - create a proc block with new and a code block that prints "yo" and call it
    - do the same with proc object
    - using code block as proc by using special arguments
    - define a proc block and pass it as an argument
    - loop through an array of string with each. instead of code block pass a proc
    - what happens when you pass a proc with &myprocref
    - create a class Person with attr_reader name. store array of person. define to_proc class singleton method. pass person class in map block to get name upcase.
    - create a proc call back counter make_counter
    - Proc and their argument behavior
- Lambda
    - create a lambda and call
    - difference between lamda and proc
        - automatic conversion
        - how return works
        - method arguments
    - stabby lambda operator
        - why was it introduced
        - how to give parameter list in this format
- Methods as Objects
    - True or False ? Methods don't present themselves as Objects.
    - How to get method as an Object
    - how to call the method object
    - how to unbind and bind the method to a different object
    - skip the default hierarchy of class defined and make class C call method defined on class A.
- Two other ways of invoking callable objects instead of call
    - the array square bracket notation
    - .() notation
- eval
    - example
        - use eval to get a method name from user
        - define a method with that name
        - call that method through eval
    - use binding with eval to print a local variable at top level to print inside a method
    - what's the $SAFE variable ?
    - why is eval is not used by experienced programmers
    - use instance_eval to print a private variable
        - use instance_exec to pass arguments
        - example
            - define a class called person
            - define methods name= and age=
            - use instance eval to execute assignment code block
    - class_eval
        - create a method with define_method and access local variable inside class with class_eval
- Threads
    - What is default fallback mechanism if OS doesn't support threads
    - Will a thread get killed if the program finishes before the thread finished
    - what does the join method do ?
    - status checking methods for thread
        - status
        - alive?
        - stop?
        - wakeup after stop
    - what is the Fiber class
        - give an example using yield and resume
    - require 'socket' library and create a simple TCPServer
        - accept all connections
        - get name from the user and respond with Username and Date
        - change the program to chat server with welcome and broadcase message.
    - Threads and Scope
        - what's the only difference between blocks and threads with respect to global variables and scope
    - Example
        - Define rps class with comparable module included
        - define the comparable spaceship operator and a play method which
- system commands inside ruby
    - system
    - backquote
    - %x
    - what version allows string interpolation
    - how to check the status of the process executed via these commands
    - use open and popen3 to open a two way communication with a system command

## Chapter 15

- method_missing
    - create a person class and use method_missing to make set_ method available and corresponding respond_to_missing? method
    - use the function method on an object to get object as an method
    - use method missing on a class hierarchy to call method from the parent hierarchy skipping parent classes
    - use
        - included
            - print a message whenever a module is included into a class
            - use included to add class methods
        - extended
            - print a message whenever a module is extended
        - const_missing
            - initialize the missing constant to some value
        - method_added example
        - singleton_method_added example
- Querying Object capabilities
    - get all non private method that deals with case
    - get all method that has bang modifiers
    - get all methods that doesn't have mathcing bang modifiers
    - Object level method listings
        - public_methods
        - private_methods
        - protected_methods
    - Class level method_listings. How to exclude methods defined in ancestor classes
        - instance_methods
        - public_instance_methods
        - private_instance_methods
        - protected_instance_methods
    - singleton_methods
        - it also lists methods from ancestor line
    - list all local variables, global variables and instance variables of an object
- Stacktrace
    - what method gives the call stack trace