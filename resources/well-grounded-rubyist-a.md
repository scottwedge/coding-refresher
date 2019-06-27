## Chapter 5

```
class Person
  attr_accessor :name, :hobbies, :friends
  People = []

  def initialize(name)
    @name = name
    @hobbies = []
    @friends = []
    People.push self
  end

  def self.method_missing(m,*args)
    method = m.to_s
    attr = method.split("_").last
    if method.start_with?("all_with") &&
      self.public_method_defined?(attr)
      People.find_all do |person|
        person.send(attr).include?(args.first)
      end
    end
  end
end
```


## Chapter 6

- when used for single line if statements. It can also be used with semicolon instead of then
- if statement

```
if some_condition
  do_stuff_1
elsif some_other_condition
  do_stuff_2
end
```

- puts "hey it worked" if some_conition_check
- when local variable is directly assigned to a value it will always through a warning. Also if assignment is present with in if statement it will automatically have nil value by default even if it never went inside the if block.
- if x = some_method_or_variable

```
if not condition
  do_some_stuff
end

unless condition
  do_some_stuff
end
```

- case acts like a filter. it automatically compares the object in question with === method implemented internally for that object.

```
case my_string_object
when "addition"
  do_plus_operation
when "subtraction"
  do_minus_operation
when "multiply"
  do_mulitply_operation
when "division", "modulo"
  not_implemented_message
else
  invalid_operation
end
```
- case can exist without the initial condition and used like substitute for if
- multiple values can be specified as comma seperated values in when which will evaluate to condition 1 or condition 2
- it depends on the situtation. for example when === is implemented properly
```
case
when x < 0
  puts "x is negative"
when x > 0 && x < 5
  puts "x is greater than 0 and less than 5"
when x > 5 && x < 10
  puts "x falls in range 5 to 10"
else
  puts "x is greater than 10"
end
```
- the return value of the when block that evaluates to true. If none matches it will be nil
- when the condition evaluates to true. there is no break statements needed like in other languages

- loop is an enumerator which loops forever
- loop { do_some_stuff }
- using next, break and if
- next skip to the beginning of next iteration. break exits from the loop

- while example
```
while some_condition_is_true
  do_my_stuff
end
```
- begin end while example
```
x = 1000
begin
  x += 1
end while x < 1000
```
- single line while
```
x = 0
x += 1 while x < 10
```
- single line while executes only if the condition is true. begin end executes the first time irrelevant of whether the condition is true or false
- until and while are like fi and unless
```
x = 0
x += 1 until x > 10
```

- for in example
```
for i in [10, 20, 3]
 puts i
end
```



- method_call
```
my_method(arg1, arg2 ...) { |block_arg1, block_arg2..| code_block }
```
- yield
```
def my_method
  yield
end
```
- curly braces got more presedence than do end
- passing arguments to code block
```
def my_method(a,b)
  yield(a, b)
end

my_method(100,200) {|arg1, arg2| puts arg1, arg2}
```
- times method
```
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
- each method
```
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
- each returns itself.
- my_each using my_times
```
class Array
  def my_each
    self.size.my_times do |index|
      yield(self[index])
    end
    return self
  end
end
```
- each returns itself while map returns the accumulated return values of yield
- my_map
```
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
- my_map using my_each
```
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

- code blocks can access the local variables of the method they are present in
- block arguments passed to code block, local variables inside the method and exclusive local variables of the code block
- exclusive local variable should be specified after semi colon 
```
method_call(arg_list) { | arg1, arg2 ; local_var1, local_var2|
  do_some_stuff
}
```

- Errors
```
raise "raising run time error"
x()
x
STDIN.puts("you can't write here")
File.open("yolo.txt")
1 + "can't add this"
def x;end; x(100)
```

- StandardError
- Actual errors might be captured falsely and hidden
- It's a syntactic sugar for ErrorClass.new. Instead ruby creates an instance of the called class and returns the exception
-
```
begin
  raise ArgumentError
  rescue ArgumentError => e
    puts e.message
    puts e.backtrace
  end
end
```
- the program continues to the next statement after begin rescue which in most cases may not be the intended effect.
- simple call raise and it will automatically raise the captured exception.
```
rescue ArgumentError => e
  raise
end
```
- when something must execute irrlevant of whether the exception is captured or not. like a File handle close call.
- custom class
```
class MyCustomClassError < StandardError
end
raise MyCustomClassError
```
- from StandardError since that is what is captured in default rescue block
- Same as preventing the usual name clash and grouping stuff together.