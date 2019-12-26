# Chapter 6 : Control Fow Techniques

*if, elsif, else example*

<details>
<summary>Answer</summary>

```ruby
if n > 0
    puts "Your number is positive."
elsif n < 0
    puts "Your number is negative."
else
    puts "Your number is zero."
end
```

</details>

*single liner if*

<details>
<summary>Answer</summary>

```ruby
print "it's true" if x
```

</details>

*unless example*

<details>
<summary>Answer</summary>

- usually an equivalent if is used to avoid confusion

```ruby
unless x > 100
    puts "Small number!"
else
    puts "Big number!"
end
```
</details>

*why is bracket recommended when using ! in if*

<details>
<summary>Answer</summary>

- ! is of higher precedence than < > == operators

</details>

*what happens with this code*

```ruby
x = false
if x
  y = 100
end
puts y
puts z
```

<details>
<summary>Answer</summary>

- y is created and assigned to nil even if the block is never executed, so nil will be printed
- z will throw unknown variable or method error
</details>

*when ruby doesn't issue warning for using assignment in if ?*

<details>
<summary>Answer</summary>

- ruby will detect when it is not a direct assignment of value and not throw warning

```ruby
if x = some_method #or some expression
  puts "x evaluated to true"
end

name = "David A. Black"
if m = /la/.match(name)
    puts "Found a match!"
    print "Here's the unmatched start of the string: "
    puts m.pre_match
    print "Here's the unmatched end of the string: "
    puts m.post_match
else
    puts "No match"
end
```

</details>


*Write a case statement without syntactic sugar*

<details>
<summary>Answer</summary>

```ruby
case myObject
when objectToCompare1.===(myObject)
    # code
when objectToCompare2.===(myObject)
    # code
else
    # code
end
```

</details>

*what's the case subsumption operartor* 

<details>
<summary>Answer</summary>

- the triple equal to operator (===)
- it's the default operator used for comparison in **when** statements

</details>

*use case when for substitute as if else statement*

<details>
<summary>Answer</summary>

```ruby
case
when user.first_name == "David", user.last_name == "Black"
    puts "You might be David Black."
when Time.now.wday == 5
    puts "You're not David Black, but at least it's Friday!"
else
    puts "You're not David Black, and it's not Friday."
end
```

</details>

*What's the return value of case statement*

<details>
<summary>Answer</summary>

- if there is a match it returns the last return of the statement in when
- if there is not match it returns nil

</details>

*use when in puts and variable assignment*

<details>
<summary>Answer</summary>

```ruby
puts case
    when user.first_name == "David", user.last_name == "Black"
        puts "You might be David Black."
    when Time.now.wday == 5
        puts "You're not David Black, but at least it's Friday!"
    else
        puts "You're not David Black, and it's not Friday."
    end

# the same code can be assigned to a variable as well
output = case
    when user.first_name == "David", user.last_name == "Black"
        puts "You might be David Black."
    when Time.now.wday == 5
        puts "You're not David Black, but at least it's Friday!"
    else
        puts "You're not David Black, and it's not Friday."
    end
```

</details>

*when does the case execution stop ? How does it compare with other languages*

<details>
<summary>Answer</summary>

- ruby doesn't need break statements at the end of every when like other languages.
- it goes sequentially. if there is a match with *when* condition it stops there

</details>

*Create a class called TicketComparer that has a class method called compare that encapsulates the case statement.*

*To make the tickets easier to identify, the Ticket class has attributes :name, :venue and :date. The following code*

```ruby
ticket1 = Ticket.new("ticket1", "Town Hall", "07/08/18")
ticket2 = Ticket.new("ticket2", "Convention Center", "07/08/18")
ticket3 = Ticket.new("ticket3", "Town Hall", "08/09/18")
puts "#{ticket1.name} is for an event on: #{ticket1.date}."
TicketComparer.compare(ticket1, ticket2, ticket3)
```

*will produce the output:*

```ruby
ticket1 is for an event on: 07/08/18.
Same date as ticket2!
```

<details>
<summary>Answer</summary>

```ruby
class Ticket
  attr_accessor :venue, :date
  def initialize(venue, date)
    self.venue = venue
    self.date = date
  end

  def ===(other_ticket)
    self.venue == other_ticket.venue
  end

end
ticket1 = Ticket.new("Town Hall", "2018-07-08")
ticket2 = Ticket.new("Conference Center", "2018-07-08")
ticket3 = Ticket.new("Town Hall", "2018-08-09")
puts "ticket1 is for an event at: #{ticket1.venue}."

case ticket1
when ticket2
  puts "Same location as ticket2!"
when ticket3
  puts "Same location as ticket3!"
else
  puts "No match."
end
```

</details>

*write a case..when to find the what type the passed object belongs*

<details>
<summary>Answer</summary>

- this is just a hypothetical example.
- it could be handled just with my_object.class

```ruby
def find_type(my_object)
    case my_object
    when String
        "It's a string"
    when Integer, Float, Numeric
        "It's a number"
    when TrueClass, FalseClass
        "It's a boolean"
    when Symbol
        "It's a symbol"
    when NilClass
        "It is nil"
    when Array
        "It's an array"
    when Hash
        "It's a Hash"
    else
        "It's a user created object of type #{my_object.class}"
    end
end
```

</details>

*when not to use case statements*

<details>
<summary>Answer</summary>

- when there is a direct one to one mapping comparison.
- It's better to use a map instead

```ruby
case country
when "europe"
  "http://eu.example.com"
when "america"
  "http://us.example.com"
end
```

- It's better to use a hash here

```ruby
SITES = {
  "europe"  => "http://eu.example.com",
  "america" => "http://us.example.com"
}
SITES[country]
```

</details>

*How loop works*

<details>
<summary>Answer</summary>

- loop takes a code block

```ruby
loop do
  puts "Eternally executing !!!"
end
```

</details>

*Single liner loop statement*

<details>
<summary>Answer</summary>

```ruby
loop { puts "Eternally executing!!!" }
```

</details>

*How to exit loop*

<details>
<summary>Answer</summary>

- usually exit criteria is handled with in loop

```ruby
n = 100
i = 0
loop do
  i += 1
  puts "i is now #{i}"
  break if i == n
end
```
</details>

*What's the functionality of next and break*

<details>
<summary>Answer</summary>

- next goes to the next iteration. It's the equivalent of continue.
- break exits from the loop

</details>

*times example*

<details>
<summary>Answer</summary>

```ruby
10.times do |i|
  puts "executing #{i}th time"
end
```

</details>

*While example*

<details>
<summary>Answer</summary>

```ruby
i = 0
while i < 10
  puts "i is #{i}"
  i += 1 
end
```

</details>

*Begin end while example*

<details>
<summary>Answer</summary>

```ruby
i = 10
begin
  puts "i is now #{i}"
  i += 1
end while i < 10
```

</details>

*How to use while in a single liner modifiers*

<details>
<summary>Answer</summary>

```ruby
i = 10
puts a[i+=1] while i < 10
```

</details>

*How is single line while different from begin end while*

<details>
<summary>Answer</summary>

- begin end while is like do while - executes at least one time
- single liners are just normal while statements but easy to read

</details>

*Until example*

<details>
<summary>Answer</summary>

```ruby
i = 1
until i == 10
  puts "i is now #{i}"
  i += 1
end
```

</details>

*for in example for arrays*

<details>
<summary>Answer</summary>

```ruby
a = (1..20).to_a
for val in a
  puts "current value is now #{val}"
end
```

</details>


*How was loop implemented?*

<details>
<summary>Answer</summary>

- ruby loops were implemented in c language

</details>

*What is an iterator method*

<details>
<summary>Answer</summary>

- An iterator is a special ruby method which accept and execute a code block

</details>

*How to specify a code block*

<details>
<summary>Answer</summary>

```ruby
def some_method(*args)
  for val in args
    yield(val)
  end
end
some_method("abc", "xyx", 10, 20) {|param1| puts "yielding #{param1}" }
```

</details>

*Write a custom loop called my_loop method that imitates inbuilt loop*

<details>
<summary>Answer</summary>

```ruby
def my_loop
  while true
    yield
  end
end
```

</details>


## Iterators

*What's an iterator*

<details>
<summary>Answer</summary>

- A method that can yield to the passed code block

</details>

*What are key components of a method call*

<details>
<summary>Answer</summary>

1. the receiving object of method call
2. the argument list. Defaults to ()
3. the code block

</details>

*How to call a code block inside method*

<details>
<summary>Answer</summary>

- using the keyword yield

</details>

*What's the difference between curly braces and do end*

<details>
<summary>Answer</summary>

- {} got more precedence than do end

```ruby
arr = (1..10).to_a
puts arr.each {|val| val + 1}
puts arr.each do |val| val + 1 end
```

</details>

*How to pass arguments to code block*

<details>
<summary>Answer</summary>

```ruby
def my_method(a,b)
  yield(a, b)
end

my_method(100,200) {|arg1, arg2| puts arg1, arg2}
```

</details>

*Implement times method as my_times for Integer class.*

<details>
<summary>Answer</summary>

```ruby
class Integer
  def my_times(*args)
    counter = 0
    while counter < self
      yield(counter)
      counter += 1
    end
    return self
  end
end
```

</details>

*Implement my_each method for array class*

<details>
<summary>Answer</summary>

```ruby
class Array
  def my_each
    index = 0
    while index < self.size
      yield(self[index])
      index += 1
    end
    return self
  end
end
```

</details>

*What's the return value of each method*

<details>
<summary>Answer</summary>

- It returns itself

</details>

*Define my_each using my_times*

<details>
<summary>Answer</summary>

```ruby
class Array
  def my_each
    self.size.my_times do |index|
      yield(self[index])
    end
    return self
  end
end
```

</details>

*What's the difference between each and map*

<details>
<summary>Answer</summary>

- each returns itself while map returns the accumulated return values of yield

</details>

*Implement simple version of map as my_map*

<details>
<summary>Answer</summary>

```ruby
class Array
  def my_map
    index = 0
    acc = []
    while index < self.size
      acc << yield(self[index])
      index += 1
    end
    return acc
  end
end
```

</details>

*Implement my_map using my_each*

<details>
<summary>Answer</summary>

```ruby
class Array
  def my_map
    acc = []
    self.my_each do |element|
      acc << yield(element)
    end
    return acc
  end
end
```

</details>

*What's the biggest advantage of using code blocks*

<details>
<summary>Answer</summary>

- each block is one isolated environment
- piggy backing existing code blocks

</details>

## Scope inside code blocks

*How does scope work with code blocks*
<details>
<summary>Answer</summary>

- code blocks can access the local variables of the method they are present in

</details>

*What happens when a method local variable name and the block parameter name are same ?*
<details>
<summary>Answer</summary>

- the block parameter becomes a exclusive local variable to the block itself and doesn't affect the method's local variable

</details>

*How to avoid re-writing a local variable inside block*
<details>
<summary>Answer</summary>

- declaring a exclusive local variable for the code block itself

</details>

*how to define block variable ?*
<details>
<summary>Answer</summary>

```
method_call(arg_list) { | arg1, arg2 ; local_var1, local_var2|
  do_some_stuff
}
```

</details>

## Error Handling

*What's an exception*
<details>
<summary>Answer</summary>

- It's a special instance of the Exception class raised whenever an error is encountered

</details>

*Raise these errors*
1. RuntimeError
2. NoMethodError
3. NameError
4. IOError
5. Errno::<<errorname>>
6. TypeError
7. ArgumentError

<details>
<summary>Answer</summary>

```
raise "raising run time error"
x()
x
STDIN.puts("you can't write here")
File.open("yolo.txt")
1 + "can't add this"
def x;end; x(100)
```

</details>

*What Exception does the default rescue statement capture*
<details>
<summary>Answer</summary>

- StandardError
- If you were to raise the top level class Exception, rescuing plainly will not capture it

</details>

*Why should you capture specific exception instead of the default plain rescue*
<details>
<summary>Answer</summary>

- Actual errors might be captured falsely and hidden

</details>

*why is class name specified in raising an exception, rather than the Object*
<details>
<summary>Answer</summary>

- It's a syntactic sugar for ErrorClassName.new. Instead ruby creates an instance of the called class and returns the exception

</details>

*How to capture the exception object and use the methods they provide*
<details>
<summary>Answer</summary>

```ruby
begin
  raise ArgumentError
  rescue ArgumentError => e
    puts e.message
    puts e.backtrace
  end
end
```

</details>

*Why should you return or exit on rescue ?*
<details>
<summary>Answer</summary>

- the program continues to the next statement after begin rescue which in most cases may not be the intended effect.

</details>

*How to re-raise an exception*
<details>
<summary>Answer</summary>

- simply call raise inside rescue and it will automatically raise the captured exception.

```ruby
begin
  raise ArgumentError
  rescue ArgumentError => e
    puts e.message
    puts e.backtrace
    raise
  end
end
```

</details>

*Use binding.irb for debugging*
<details>
<summary>Answer</summary>

```ruby
def divider(n)
  begin
    puts "#{100/n.to_i}"
    binding.irb
    rescue => e
      puts e.message
      puts e.backtrace
      raise
    end
  end
end
```

</details>

*Use safe navigation operator to avoid NoMethod error*
<details>
<summary>Answer</summary>

- assume that account object has owner attribute returns owner object if present otherwise nil

```ruby
account&.owner&.address
```

</details>

*How safe navigation operator differs from using && 

<details>
<summary>Answer</summary>

- it only checks for nil
- && checks for both nil and false

```ruby
account = Account.new(owner : false)
account&.owner&.address
# will throw error un defined method address for false class
```

</details>

*When do you use ensure ?*
<details>
<summary>Answer</summary>

- when a code block needs to run irrelevant of whether error is raised or not

```ruby
begin
fh = File.open("file_path")
rescue => e
  puts "Unable to open file"
ensure
  fh.close
end
```

</details>

*How to create custom exception class*
<details>
<summary>Answer</summary>

```ruby
class MyError < StandardError
end
```

</details>

*Should it inherit from Exception classes or StandardError*
<details>
<summary>Answer</summary>

- Majority of the cases will be to inherit from StandardError unless some special scenarios are involved
- Also StandardError is what is captured in default rescue block

</details>

*How namespacing is useful with custom exceptions*
<details>
<summary>Answer</summary>

- To avoid name clashes with the existing exception classes it is always better to put them under your project name space

```ruby
module Project
  class MyError < StandardError
  end
end
```

</details>