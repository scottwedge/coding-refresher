# Chapter 2

*How objects behave in ruby language ?*
<details>
<summary>Answer</summary>

- An object is like a new born in ruby.
- It has some default set of behaviors
- It can also be taught any new behaviors which is not defined by the parent (i.e the class that created it.)
- We can also link to analogy of cell and DNA.

</details>

*What is the default object everything belongs to ?*
<details>
<summary>Answer</summary>
Object
</details>

*Create a new object without a class and add methods to it*
<details>
<summary>Answer</summary>

```ruby
a = Object.new
def a.say_hello
  puts "hello there!!!"
end
```
</details>

*What are the only two falsy values in Ruby?*
<details>
<summary>Answer</summary>

- False and nil
</details>

*What is interpolation ?*
<details>
<summary>Answer</summary>

- substituting any expression in a string

```ruby
value = "interpolation"
"this is #{interpolation}.
I can put any expression like #{1+3}
```
</details>

*What is a BasicObject*
<details>
<summary>Answer</summary>

- The bare minimal Object with only a few methods.
- It doesn't even have "methods" method or inspect or object_id
</details>

*How do you list all methods belonging to an object*
<details>
<summary>Answer</summary>

- my_object.methods

</details>

*List 3 useful default reflective methods that belongs to Objects*
<details>
<summary>Answer</summary>

1. object_id
2. respond_to?
3. send or __ send__

</details>

*How do you check whether an object has a method ?*
<details>
<summary>Answer</summary>

```ruby
my_object.respond_to?("message")
```
</details>

*Write a code snippet such that any user inputted value can be called on some object say ticket_info*
<details>
<summary>Answer</summary>

```ruby
user_message = gets.chomp
if my_object.respond_to?(user_message)
  ticket_info.send(user_message)
else
  puts "Ticket object cannot respond to the message #{user_message}"
end
```
</details>

*Compare if two objects refs are same*
<details>
<summary>Answer</summary>

```ruby
object_a.object_id == object_b.object_id
```

</details>

*How do you send methods as messages to an Object ?*
<details>
<summary>Answer</summary>

Using the dot operator or send method message

</details>

*Diff b/n send, __ send__ and public_send*
<details>
<summary>Answer</summary>

- send and __send___ are essentially same. __send___ is defined in order to avoid confusion and name clashes.
- *public_send* can only access public methods.

</details>

*Diff b/n parameter vs arguments*
<details>
<summary>Answer</summary>

- parameter is formal way of defining variables that the method will accept during method definition.
- arguments are the list of variables passed at run time when calling a function

</details>

*How to define required argument*
<details>
<summary>Answer</summary>


```ruby
def one_required_param(a)

end
```

</details>

*How to define default argument*
<details>
<summary>Answer</summary>


```ruby
def one_default_param(a=100)

end
```

</details>

*How to define optional argument*
<details>
<summary>Answer</summary>


```ruby
def multi_optional_param(*a)
end
```

</details>

*What will be output of following snippet*

```ruby
def args_unleashed(a,b=111,*c,d,e)
  p a,b,c,d,e
end
# 1
args_unleashed(1,2,3,4,5)
# 2
args_unleashed(1,2,3,4)
# 3
args_unleashed(1,2,3)
# 4
args_unleashed(1,2,3,4,5,6,7,8)
# 5
args_unleashed(1,2)
```

<details>
<summary>Answer</summary>

- I will be printed in one line each for simplicity, I'm just giving the return value.

1. [1, 2, [3], 4, 5]
2. [1, 2, [], 3, 4]
3. [1, 1, [], 2, 3]
4. [1, 2, [3, 4, 5, 6], 7, 8]

</details>

*What's the only allowed order when using default and optional arguments together?*
<details>
<summary>Answer</summary>

- optional or sponge argument can only be put after the default arguments and never before them
- defaul
- it will raise syntax error

</details>

*What will be output of the program ?*

```ruby
def broken_args(x,*y,z=1)
end

broken_args(10)
```
<details>
<summary>Answer</summary>

- default could never get a value since sponge will not leave anything for z.

</details>

*There can be atmost how many optional arguments per method*
<details>
<summary>Answer</summary>

- Only one always

</details>

*Will R/D/R/D work? if not give examples of valid ones*
<details>
<summary>Answer</summary>

- It will throw syntax error.

</details>

*What's the scope of a local variable within a method?*
<details>
<summary>Answer</summary>

- It is visible only in that method.

</details>

*What's the difference between reference variable and immediate values*
<details>
<summary>Answer</summary>

- Usually all objects in ruby are stored as reference in a variable.
- But there some objects that are directly stored in the variable itself.

</details>

*What objects are stored as immediate values in variables*
<details>
<summary>Answer</summary>

1. numbers - integer and floats
2. symbols
3. true and false
4. nil

</details>

*Why the post and pre increment, decreament operators are not present in ruby?*
<details>
<summary>Answer</summary>

- In ruby even though immediate values mean that they are directly present in the variable itself, it's actually a bit different in how it's present.
- For example, the existence of an integer 100 is always unique no matter how many variables are referencing to it.

```ruby
a = 100
b = 100
p a.object_id
# 201
p c.object_id
# 201
```

- ++ and -- would mean re-assigning the variable to the next object. It doesn't make any sense.

</details>

*How to create a duplicate of an Object ?*
<details>
<summary>Answer</summary>


```ruby
my_object.dup
```

</details>

*How to freeze an Object ?*
<details>
<summary>Answer</summary>


```ruby
def change_string(str)
  str.replace("New string content!")
end

s = "Original string content!"
s.freeze
change_string(s) 
# will throw FrozenError (can’t modify frozen string)
```

</details>

*How to change the contents of frozen object ?*
<details>
<summary>Answer</summary>

- There is no un freeze method.
- They can't be changed.

</details>

*Diff b/n dup vs clone*
<details>
<summary>Answer</summary>

- calling dup on frozen object copies the object and the new object is not frozen
- clone copies the frozen object with forzen mode on.

</details>

*How ruby identifies when it encounters a plain word.*
<details>
<summary>Answer</summary>

1. If the identifier is a keyword, it’s a keyword (Ruby has an internal list of these and recognizes them).
2. If there’s an equal sign (=) to the right of the identifier, it’s a local variable undergoing an assignment.
3. Otherwise, the identifier is assumed to be a local variable or method call, both of which are treated the same way by the Ruby interpreter. That's why the error message also says undefined local variable or method.
</details>