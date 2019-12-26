# Chapter 5 : default object self, scope and visibility

*what self refers to at each of the following*

1. toplevel - outside of any definition
2. inside class definition
3. inside module definition
4. inside method definition
   1. instance method definition in class
   2. instance method definition in module
   3. singleton method definition in class
   4. singleton method definition in objects

<details>
<summary>Answer</summary>

1. main - it can be referred unless assigned to a variable
2. the class itself
3. the module itself
4. depends
   1. any object of the class
   2. any object of the class where the module is added
   3. the class itself
   4. the single object

</details>

*what's the one simple rule which governs what self refers to?*

<details>
<summary>Answer</summary>

> Anytime a definition block is encountered, what object self refers to changes

</details>

*what are different ways to define class methods. Give examples*

<details>
<summary>Answer</summary>

**Method 1**

```ruby
class C
end

def C.my_method
end
```

**Method 2**

```ruby
class C
  def C.my_method
  end
end
```

**Method 3** (Recommended Way)

```ruby
class C
  def self.my_method
  end
end
```

**Method 4**

```ruby
class C
  class << self
    def my_method_1
    end

    def my_method_2
    end
  end
end
```


</details>

*What is the default receiver of any message in ruby*

<details>
<summary>Answer</summary>

- self

</details>

*What happens when a variable name and method name has the same name and how to resolve it*

<details>
<summary>Answer</summary>

- the variable name takes precedence
- it has to resolved by calling self.method_name

</details>

*What's an instance variable of class ?*

<details>
<summary>Answer</summary>

- class like anyother object can have instance variables as well.

</details>

*what global variable contains the name of the start up file*

<details>
<summary>Answer</summary>

$0

</details>

*what global variable contains the process id of the program currently running*

<details>
<summary>Answer</summary>

\$$

</details>

*what global variable contains the load path*

<details>
<summary>Answer</summary>

$:

</details>

*where is friendly version of global variables stored*

<details>
<summary>Answer</summary>

English.rb

</details>

*What is the scope of global variables*

<details>
<summary>Answer</summary>

It's visible everywhere irrelevant of where it is defined

</details>

*Why are global variables generally discouraged?*

<details>
<summary>Answer</summary>

- It goes against the Object Oriented principle of having a black box object and sending message to do something.
- Sharing information is not a good design cuz it's working based on data

</details>

*How local scope works. How definition blocks and scope relates*

<details>
<summary>Answer</summary>

- Any time any kind of definition blocks, def method_name; end or class or module, a new local scope is created.

</details>

*How does local scope on method work when called vs definition?*

<details>
<summary>Answer</summary>

- a new blank slate local scope is created whenever a method is called
- definition doesn't create a scope unless it is called

</details>

*How scope works for constants ?*

<details>
<summary>Answer</summary>

- It's like a folder structure using :: instead of /

</details>

*When there is clash with constants from a namespace and ruby built-ins, how is it resolved ?*

<details>
<summary>Answer</summary>

- ruby constants should be referred with :: symbol for example ::File to refer to File class.

</details>

*What's the purpose of class variables?*


<details>
<summary>Answer</summary>

- class variables provide a way to share data between a class and its instances without showing it to the outside world.

</details>


*How does scope work for class variables ?*

<details>
<summary>Answer</summary>

- it's visible to the object's and the full class hierarchy. It's like a global variable within the class hierarchy.

</details>

*Create a class with class variable to keep track of how many objects have been created*

<details>
<summary>Answer</summary>

```ruby
class C
  @@total_count = 0
  def self.count
    @@total_count
  end

  def initialize
    @@total_count += 1
  end
end
```

</details>

*Why are class variables not encouraged?*

<details>
<summary>Answer</summary>

- They are present certain specific use cases and not to be used.
- Because it's visible to class hierarchy and not just the class it's defined

</details>

*What's a better way than using class variables?*

<details>
<summary>Answer</summary>

We could use class's own singleton instance variables with its own getter and setter variables

```ruby

class C
  @total_count = 0

  def self.count=(n)
    @total_count = n
  end
  def self.count
    @total_count
  end

  def initialize
    self.class.count += 1
  end
end
```

</details>

*What are the different method access rules that Ruby provides ?*

<details>
<summary>Answer</summary>

1. public
2. private
3. protected

</details>

*What is the rule for private method access ?*

<details>
<summary>Answer</summary>

- no external receiver should be specified. Like never

</details>

*Output of this code*

```ruby
class C
  def test
    self.talk
  end
  private
  def talk
    "Yo"
  end
end

C.new.test
```

<details>
<summary>Answer</summary>

- NoMethodError (private method `talk' called for #<C:Object_id>)

</details>

*How setter method works in private ?*

<details>
<summary>Answer</summary>

- the only exception to the no external rule is private setter methods where using only self is allowed

```ruby
class Dog
  attr_reader :age, :dog_years
  def dog_years=(years)
    @dog_years = years
  end
  def age=(years)
    @age = years
    self.dog_years = years * 7
    # if we assign self to a variable and use it like below
    # dog = self
    # dog.dog_yers = years * 7
    # it will throw error
  end
  private :dog_years=
end
```

</details>

*How Protected works ?*

<details>
<summary>Answer</summary>

- Protected is similar to private with the exception being the receiver must be an object belonging to the class hierarchy.

</details>

*Where do top level methods go?*

<details>
<summary>Answer</summary>

- top level methods are defined as private methods on Object.

```ruby
def talk
  puts "Hello"
end
```

- This is same as


```ruby
class Object
  private
  def talk
    puts "Hello"
  end
end
```

</details>

*How does defining private methods on Object work as top level methods?*

<details>
<summary>Answer</summary>

- private methods must be called without explicit receiver
- Object is present in method lookup chain
- So any method defined on top-level can be called without any receiver self.

```ruby
class Object
  private
  def talk
    puts "Hello"
  end
end

talk
a = Object.new
a.talk
# will throw error
```

</details>