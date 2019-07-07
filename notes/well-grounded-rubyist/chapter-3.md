## Chapter 3

*What is a class in ruby ?*
<details>
<summary>Answer</summary>

1. class is an object which is used to create instances of an object which is defined in the class.
2. it's usually used for defining Object behavior (methods) and it's state (instance variables) and bring them to existence through instantiation i.e by calling the new method.

</details>

*Example of class definition*
<details>
<summary>Answer</summary>

- it is created with the keyword "class" followed by the class name which is a constant.

```ruby
class MyClass
end
```

</details>

*How are constants different in ruby compared to other languages?*
<details>
<summary>Answer</summary>

- constants in ruby can be re-assigned, however it will throw a warning but it is not illegal.

</details>

## Instance Methods

*What are instance methods?*
<details>
<summary>Answer</summary>

- Methods defined in class are generally called instance method as they are invoked by the objects created by the class.

</details>

*How are instance methods different from defining methods on the object created directly?*
<details>
<summary>Answer</summary>

- All objects created through the class constructor get the instance methods.
- The methods defined on an object is available only to that particular object. This is called **singleton method**

</details>

*Output of the program?*
```ruby
class C
    def m
        puts "First definition of method m"
    end
    def m
        puts "Second definition of method m"
    end
end

t = C.new
t.m
```

<details>
<summary>Answer</summary>
- The method defined last takes precedence.

</details>


*What is re-opening a class ?*
<details>
<summary>Answer</summary>

- Every time a class is defined, it might be opening an existing class or create a new one
- The newly added methods or over-ridden methods are added to the class

</details>

*What's the use of re-opening a class ?*
<details>
<summary>Answer</summary>

1. A class definition could be spread into multiple files.
2. A library is required and custom methods needs to be added.

Example: The time class is re-opened and new methods are added, enhancing existing functionalities.

</details>

*What are instance variables and how are they linked to states*
<details>
<summary>Answer</summary>

- Instance variables are used to maintain the state of the object.
- Instance variable names always start with a single @ (at sign). This enables you to recognize an instance variable at a glance.
- Instance variables are only visible to the object to which they belong. (Being “visible to an object” has a technical definition having to do with the default
object self, which you’ll see more about in chapter 5.)
- An instance variable initialized in one method inside a class can be used by any instance method defined within that class.

</details>

*What's the initialize method and how to use it*
<details>
<summary>Answer</summary>

- initialize method is used to set the initial values of Object states.
- it can take user defined arguments and add business logic as well before assigning.

</details>

*Special use of (=) in method names*
<details>
<summary>Answer</summary>

- it's used for setter methods.
- usually used for assigning instance variables.
- it can also be used for adding intelligence on to assignments like validations or conversions.
- it can also be abused to do something other than assignment.

</details>

*Give an example of getter and setter methods without using attr_ methods*
<details>
<summary>Answer</summary>

```ruby
class Ticket
    def initialize(venue, location, price)
        @venue = venue
        @location = location
        @price = price
    end

    def venue
        @venue
    end

    def location
        @location
    end

    def price
        @price
    end

    def price=(val)
        @price = val
    end
end
```

</details>

*How ruby interprets = sign in method names*
<details>
<summary>Answer</summary>

- when ruby sees *x = "some_val"* it ignores the white space between l-value and consider it like usual assignment

</details>

*What's the return value of methods with = sign irrelevant of what happens inside*
<details>
<summary>Answer</summary>

- it's always the r-value irrelevant of what the setter method may return

</details>

*Easier way of getter and setter methods*
<details>
<summary>Answer</summary>

- ruby defines *attr_* method for this purpose

</details>

*Example for read, write, do both with ruby attr_ methods*
    - a - read
    - b - write
    - c - both read and write
<details>
<summary>Answer</summary>

```ruby
class Ticket
    attr_reader :price, :venue, :location
    attr_writer :price
    attr_accessor :event_name
end
```

</details>


*How inheritance works in ruby*
<details>
<summary>Answer</summary>

- ruby is single inheritance language
- class is a way to club methods and states together and share them.

</details>

*Ruby and multiple inheritance*
<details>
<summary>Answer</summary>

- ruby provides modules for the purpose of including additional functionalities to a class.

</details>

*output of this program*
```ruby
class C
end
class D < C
end
puts D.superclass
puts D.superclass.superclass
```

<details>
<summary>Answer</summary>
- C
- Object

</details>

*What is the BasicObject*
<details>
<summary>Answer</summary>

any class -> Object -> BasicObject

</details>

*How many methods does the BasicObject have ?*
<details>
<summary>Answer</summary>

- 8

</details>

*create an anonymous class with a method "say_hello" that prints "hello" and assign it to a variable my_class*
<details>
<summary>Answer</summary>

```ruby
my_class = Class.new do
    def say_hello
        print "hello"
    end
end
my_object = my_class.new
my_object.say_hello
```

</details>

*Object and Class paradox*
<details>
<summary>Answer</summary>

- Class is an instance of itself
- Object is also an instance of Class
- ruby handles this paradox by manipulating it's internal reference of who created the object.

```ruby
Class.class
# Class
Class.instance_of?(Class)
# true
Object.class
# Class
```

</details>

*Where are methods like attr_* inherited from ?*
<details>
<summary>Answer</summary>

- Module

```ruby
Class.superclass
# Module
```

- methods like attr_reader, attr_writer are all inherited from 

</details>

*What's the superclass of class ?*
<details>
<summary>Answer</summary>

- module

</details>

*What are class methods*
<details>
<summary>Answer</summary>

- class methods are basically single ton methods defined on a class

</details>

*Different ways of defining class methods*
<details>
<summary>Answer</summary>

**Method 1 (Most used method)**

```ruby
class MyClass
    def self.say_something
        puts "yo"
    end
end
```

***Method 2**

```ruby
class MyClass
end
def MyClass.say_something
    puts "yo"
end
```

**Method 3**

```ruby
my_class = Class.new do
    def self.say_something
        puts "yo"
    end
end
my_obj = my_class.new
my_obj.class.say_something
```


</details>

*How is a class method a singleton method ?*
<details>
<summary>Answer</summary>

- Any method added to an object directly are called singleton methods

```ruby
class T
end
my_obj = T.new # Object.new also could be used for example
def my_obj.say_something
    puts "yo"
end
```

- class itself is an object. So any method defined directly on class is a singleton method
- singleton methods by definition are available only on the particular instance of object and not shared with any other instance.

```ruby
class T
end
def T.say_something
end
T.say_something
```

</details>

*When should one use class methods*
<details>
<summary>Answer</summary>

- Defining a behavior that is not shared with object like finding max of all price.
- The new method is a good example

</details>

*Represent the instance method print_stuffs belonging to a class called Stuff*
<details>
<summary>Answer</summary>

Stuff#print_stuff

</details>

*Represent the class method say_hello belonging to a class called Greeter*
<details>
<summary>Answer</summary>

- Greeter::say_hello
- Greeter.say_hello

</details>

*Why ruby constants aren't really constants ?*
<details>
<summary>Answer</summary>

- Because they can be changed

</details>

*Why ruby doesn't strictly prohibit constant rules ?*
<details>
<summary>Answer</summary>

- if it follows that rule, it will need special case handling for it.
- by dynamic nature of ruby, a file could be loaded any time during execution.
- if a constant gets defined in the file which is already defined previously or the file itself is reloaded, it will throw error.

</details>

*What happens when you re-assign constants ?*
<details>
<summary>Answer</summary>

- It only throws a warning and the constant is re-assigned with the new value

</details>

*What happens when you modify contents of a constant*
<details>
<summary>Answer</summary>

- it's like modifying any other object.

</details>

*How to access constant defined in a class*
<details>
<summary>Answer</summary>

- MyClass::MY_CONSTANT

</details>


*Default constants*
    - where is PI is stored
    - how to find the current ruby version
    - how to find the current patch level of the ruby you are using
    - How to find the current ruby revision
    - How to find the current ruby copy right message 

<details>
<summary>Answer</summary>

- Math::PI
- RUBY_VERSION
- RUBY_PATCHLEVEL
- RUBY_RELEASE_DATE
- RUBY_REVISION
- RUBY_COPYRIGHT

</details>

*How to find what class created the class**
<details>
<summary>Answer</summary>

- my_object.class

</details>

*How to find out if the object is an instance of a class*
<details>
<summary>Answer</summary>

- my_object.instance_of?(MyClass)
- my_object.is_a?(MyClass)

</details>