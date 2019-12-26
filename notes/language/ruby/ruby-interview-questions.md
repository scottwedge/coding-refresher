<!-- TOC -->

- [1. Language Characteristics and Core Objects](#1-language-characteristics-and-core-objects)
- [2. Data Types](#2-data-types)
  - [2.1. String](#21-string)
    - [2.1.1. Symbol](#211-symbol)
    - [2.1.2. Numeric](#212-numeric)
    - [2.1.3. Array](#213-array)
    - [2.1.4. Hash](#214-hash)
    - [2.1.5. Range](#215-range)
    - [2.1.6. Regexp](#216-regexp)
- [3. Operators](#3-operators)
- [4. Control Structures](#4-control-structures)
- [5. Blocks and Iterators](#5-blocks-and-iterators)
- [6. Methods](#6-methods)
- [7. Procs and Lambdas](#7-procs-and-lambdas)
- [8. Closures](#8-closures)
- [9. Method Objects](#9-method-objects)
- [10. Constants](#10-constants)
- [11. Classes](#11-classes)
- [12. Modules](#12-modules)
- [13. Structs](#13-structs)
- [14. Inheritance](#14-inheritance)
- [15. Metaprogramming](#15-metaprogramming)
- [16. Loading Modules, Files, and Gems](#16-loading-modules-files-and-gems)
    - [16.0.7. Loading](#1607-loading)
    - [16.0.8. Files](#1608-files)
    - [16.0.9. Gems](#1609-gems)
- [17. Security](#17-security)
- [18. Exceptions](#18-exceptions)
- [19. Debugging](#19-debugging)
- [20. The Ruby Environment and the Interpreter](#20-the-ruby-environment-and-the-interpreter)
- [21. Modules](#21-modules)
- [22. Methods & blocks](#22-methods--blocks)
- [23. Exception handling](#23-exception-handling)
- [24. Operators / Truthiness](#24-operators--truthiness)
- [25. Metaprogramming](#25-metaprogramming)
- [Testing](#testing)

<!-- /TOC -->

# 1. Language Characteristics and Core Objects

- What is the highest level in the object model?  
<details>
  <summary>Answer</summary>
  <p>
  
  `BasicObject`
  
  </p>
</details>

- Is everything in Ruby an object?  
<details>
  <summary>Answer</summary>
  <p>
  
Methods are not objects. Blocks are not objects. Keywords are not objects. However, there exist Method objects and Proc objects, and some keywords refer to objects.
  
  </p>
</details>

- Which core object includes the `Kernel` module?  
<details>
  <summary>Answer</summary>
  <p>

`Object`
  
  </p>
</details>

- What can you say about an identifier that begins with a capital letter?  
<details>
  <summary>Answer</summary>
  <p>
    
It is a constant.

  </p>
</details>

- What is a DSL and how does it pertain to Ruby?  
<details>
  <summary>Answer</summary>
  <p>
  
A Domain Specific Language is an API that allows a developer to solve a problem or represent data more naturally than they might otherwise. The flexible nature of Ruby's syntax and the ability to alias and alter existing methods and classes makes it conducive to creating rich DSL's.

  </p>
</details>

- What is duck typing and how does it pertain to Ruby?  
<details>
  <summary>Answer</summary>
  <p>
  
That an object may be acted upon even if it isn't the expected type as long as it looks and behaves like the expected object. This is a characteristic of Ruby because the lack of type checking of parameters makes this an effective programming technique.

  </p>
</details>

- Is Ruby a statically typed or a dynamically typed language?  
<details>
  <summary>Answer</summary>
  <p>

Dynamically typed since type checking is done at runtime.
  
  </p>
</details>

- Is Ruby a strongly typed or a weakly typed language?  
<details>
  <summary>Answer</summary>
  <p>
  
Strongly typed since an object's type is checked before an operation is performed on it.

  </p>
</details>

- What does it mean to coerce an object? Why would you do it?  
<details>
  <summary>Answer</summary>
  <p>
  
To coerce an object means to force it into an expected type. One might do this in order to try and force an unknown object type into the expected type or format required by the operation. This is a common practice involved in duck typing.

  </p>
</details>

- What is the difference between a statement and an expression in Ruby?  
<details>
  <summary>Answer</summary>
  <p>
  
All statements are expressions in Ruby since all statements return a value.

  </p>
</details>

- What does `self` mean?
<details>
  <summary>Answer</summary>
  <p>
  
  `self` always refers to the current object. But this question is more difficult than it seems because Classes are also objects in ruby.

```ruby
class WhatIsSelf
  def test
    puts "At the instance level, self is #{self}"
  end

  def self.test
    puts "At the class level, self is #{self}"
  end
end

WhatIsSelf.test 
 #=> At the class level, self is WhatIsSelf

WhatIsSelf.new.test 
 #=> At the instance level, self is #<WhatIsSelf:0x28190>
```  

This short snippet indicates two things:

at the class level, self is the class, in this case WhatIsSelf.

at the instance level, self is the instance in context, in this case the instance of WhatIsSelf at memory location 0x28190.

  </p>
</details>


# 2. Data Types

- What is the primary difference in these two code snippets?
<details>
  <summary>Answer</summary>
  <p>

```java  
// Java
public boolean isEmpty(String s) {
  return s.length() == 0;
}
```

```ruby
# ruby
def empty?(s)
  return s.size == 0
end  
```

The Java method only accepts Strings as arguments and only returns a boolean while...

The ruby method accepts any Object and could return anything, but in this case will return a boolean if executed without exceptions.

  </p>
</details>

- What does this say about the advantages of ruby's dynamic (duck) typed system?

<details>
  <summary>Answer</summary>

  <p>

That ruby program use less code and are more flexible.

  </p>
</details>

- What are some disadvantages (real and potential)?
<details>
  <summary>Answer</summary>

  <p>

Developers cannot be 100% certain that all arguments sent this empty? method will have a size method that is publicly accessible. Also, ruby is an interpreted language and it may take longer to run than compiled programs, such as Java, that are programmed similarly.

  </p>
</details>

- What could a developer do to address these disadvantages?
<details>
  <summary>Answer</summary>

  <p>
  
The developer could write unit tests or specs to ensure her application behaves as intended. Could also profile the application with tools like the unix time command, the ruby Benchmark class, and the ruby library called ruby-prof.

A cunning programmer would also argue that these two techniques ought to be used for both static and dynamic languages when developing complex systems.

  </p>
</details>


## 2.1. String

- Why might you want to avoid using string literals within loops?  
<details>
  <summary>Answer</summary>
  <p>
  
A new object is created for every string literal even when the values are identical. Consider using variables or symbols instead.

  </p>
</details>

- Does `String` include the `Enumerable` module?  
<details>
  <summary>Answer</summary>
  <p>

No.
  
  </p>
</details>

- What method might you use to enumerate over a string?  
<details>
  <summary>Answer</summary>
  <p>

`String#each_char`
  
  </p>
</details>

- What is the difference between a character literal such as `?A` and a string literal such as `"A"`?  
<details>
  <summary>Answer</summary>
  <p>
  
There is no difference.

  </p>
</details>

### 2.1.1. Symbol

- Describe a symbol.  
<details>
  <summary>Answer</summary>
  <p>
  
Symbols are scalar value objects used as identifiers, mapping immutable strings to fixed internal values.

  </p>
</details>

- Why are symbols typically used as hash keys instead of strings?  
<details>
  <summary>Answer</summary>
  <p>
  
Strings are mutable while symbols are immutable. Though Ruby internally makes an immutable copy of a string when used as a hash key, comparing two symbols is faster than comparing two `String` objects. This is also a convention.

  </p>
</details>

### 2.1.2. Numeric

- Symbols are immutable objects. Name another immutable core Ruby object.  
<details>
  <summary>Answer</summary>
  <p>

`Fixnum`
  
  </p>
</details>

- What happens when a value becomes too big for `Fixnum`?  
<details>
  <summary>Answer</summary>
  <p>
  
It is automatically converted to a `Bignum`.

  </p>
</details>

- What is the superclass of `Fixnum`?  
<details>
  <summary>Answer</summary>
  <p>
  
`Integer`

  </p>
</details>

- What is the superclass of `Integer`?  
<details>
  <summary>Answer</summary>
  <p>
  
`Numeric`

  </p>
</details>

- What numeric class might you use to avoid the rounding error arising in the use of binary floating-point arithmetic?  
<details>
  <summary>Answer</summary>
  <p>

`BigDecimal`
  
  </p>
</details>

### 2.1.3. Array

- How does the `%W` syntax differ from the `%w` syntax?  
<details>
  <summary>Answer</summary>
  <p>

With `%W` it is possible to define an array containing string interpolation.
  
  </p>
</details>

### 2.1.4. Hash

- Name at least one synonym for `Hash#key?`?  
<details>
  <summary>Answer</summary>
  <p>
  
`Hash#has_key?`, `Hash#include?`, `Hash#member?`

  </p>
</details>

- How might you specify a default value for a hash?  
<details>
  <summary>Answer</summary>
  <p>
  
Pass the default values as arguments to `::new` on initialization or change the default directly with the method `Hash#default`. You may also provide a default at the time of query with `Hash#fetch`.

  </p>
</details>

- Does `Hash` use `#==` or `#eql?` to compare hash keys?  
<details>
  <summary>Answer</summary>
  <p>

`#eql?`
  
  </p>
</details>

- In what order are the values of a hash iterated?  
<details>
  <summary>Answer</summary>
  <p>
  
The order in which they were inserted.

  </p>
</details>

- What is the synonym of `Hash#[]=`?  
<details>
  <summary>Answer</summary>
  <p>
  
`Hash#store`

  </p>
</details>

- Why can you safely use a string as a hash key, even though a string is mutable?  
<details>
  <summary>Answer</summary>
  <p>
  
Because the interpreter makes a private copy of a string used as a hash key.

  </p>
</details>

- Why might you use `Hash#fetch` over `Hash#[]` when querying values in a hash?  
<details>
  <summary>Answer</summary>
  <p>

`Hash#fetch` provides options for handling the case where a key does not exist in the hash.
  
  </p>
</details>

- When would you need to use `Hash#rehash`?  
<details>
  <summary>Answer</summary>
  <p>
  
After you mutate a mutable hash key.

  </p>
</details>

### 2.1.5. Range

- What are two uses of ranges?  
<details>
  <summary>Answer</summary>
  <p>
  
comparison, iteration

  </p>
</details>

### 2.1.6. Regexp

- How might you include an expression within a `Regexp` literal?  
<details>
  <summary>Answer</summary>
  <p>
  
Using `#{}` just like as in a double-quoted string literal.

  </p>
</details>

- What is the global variable for the last `Regexp` match?  
<details>
  <summary>Answer</summary>
  <p>

`$LAST_MATCH_INFO` equivalent to `$~`
  
  </p>
</details>

# 3. Operators

- What are two uses of the splat operator?  
<details>
  <summary>Answer</summary>
  <p>

Explode or expand the elements of an array. Collect arguments of a parameter list into an array.
  
  </p>
</details>

- What is the only operator which accepts three operands?  
<details>
  <summary>Answer</summary>
  <p>

The conditional operator `?:` (sometimes referred to as the ternary if operator).
  
  </p>
</details>

- Which operator must be defined in order to implement the `Comparable` module?  
<details>
  <summary>Answer</summary>
  <p>

`<=>`
  
  </p>
</details>

- What is the difference between `#==` and `#equal?`?  
<details>
  <summary>Answer</summary>
  <p>
  
`#==` performs the generic comparison and is implemented differently across classes while `#equal?` is defined on `BasicObject` and compares object identity. Therefore, `#equal?` should not be overridden in subclasses.

  </p>
</details>

- What is the difference between `#==` and `#===`?  
<details>
  <summary>Answer</summary>
  <p>

`#==` performs the generic comparison while `#===` performs case equality comparison and is useful for providing meaningful semantics in case statements.
  
  </p>
</details>

- What is the difference between `#==` and `#eql?`?  
<details>
  <summary>Answer</summary>
  <p>
  
`#eql?` is sometimes an alternate equality. `Hash` uses `#eql?` to test for hash key equality. `Numeric` types perform type conversion across `#==` but not across `#eql?`, thus `#eql?` performs a stricter comparison than `#==` in that case.

  </p>
</details>

- Which binds more tightly? `&&` or `and`  
<details>
  <summary>Answer</summary>
  <p>
  
`&&`

  </p>
</details>

- Which binds more tightly? `&&` or `=`  
<details>
  <summary>Answer</summary>
  <p>
  
`&&`

  </p>
</details>

- Which binds more tightly? `and` or `=`  
<details>
  <summary>Answer</summary>
  <p>

`=`
  
  </p>
</details>

- Which binds more tightly? `&&` or `||`  
<details>
  <summary>Answer</summary>
  <p>

`&&`
  
  </p>
</details>

- Explain this ruby idiom: a ||= b
<details>
  <summary>Answer</summary>
  <p>

A common idiom that strong ruby developers use all the time.

```ruby
# a = b when a == false
# otherwise a remains unchanged
a || a = b
```

```ruby
a = 1
b = 2
a ||= b #=> a = 1
```

```ruby
a = nil
b = 2
a ||= b #=> a = 2
```

```ruby
a = false
b = 2
a ||= b #=> a = 2
```

  </p>
</details>


# 4. Control Structures

- What is a statement modifier?  
<details>
  <summary>Answer</summary>
  <p>

A condition which follows a statement such as with `x = 1 if a == true`
  
  </p>
</details>

- Does a while block define a new scope?  
<details>
  <summary>Answer</summary>
  <p>

No.
  
  </p>
</details>

- Does the case statement in Ruby have fall-through behavior?  
<details>
  <summary>Answer</summary>
  <p>

No.
  
  </p>
</details>

- What is the difference between `throw/catch` and `raise/rescue`?  
<details>
  <summary>Answer</summary>
  <p>

`throw` and `catch` accept matching symbols as arguments and should be considered a control-flow structure where `raise` and `rescue` is used to raise and handle exceptions. `throw` and `catch` are not commonly used while exception handling with `raise` and `rescue` is used often.
  
  </p>
</details>

- Does a `rescue` block define a new scope?  
<details>
  <summary>Answer</summary>
  <p>

No.
  
  </p>
</details>

- What are some advantages of a case statement versus repeated `elsif` statements?  
<details>
  <summary>Answer</summary>
  <p>

It shows intent. It DRY's out the condition.
  
  </p>
</details>

- What are some disadvantages of a case statement versus repeated `elsif` statements?  
<details>
  <summary>Answer</summary>
  <p>

The statement is typically resistant to modification without a complete refactoring of the entire control structure. The case statement can be confusing if multiple comma-separated expressions are associated with a single when clause.
  
  </p>
</details>

# 5. Blocks and Iterators

- Name at least two classes which include the `Enumerable` module.  
<details>
  <summary>Answer</summary>
  <p>

`Array`, `Hash`, `Range`, `IO`...
  
  </p>
</details>

- When might you use the `do`/`end` syntax versus using the curly bracket syntax for a block?  
<details>
  <summary>Answer</summary>
  <p>
  
The `do`/`end` syntax for a block is commonly used for multi-line statements. An alternate convention is to use curly bracket syntax for blocks that return a value while using `do`/`end` syntax for blocks that change the state of the system somehow and do not return a value.

  </p>
</details>

- What is an iterator?  
<details>
  <summary>Answer</summary>
  <p>
  
An object that allows traversal of the elements of the container. In Ruby, an iterator is typically considered any method that uses the yield statement.

  </p>
</details>

- How do you define block-local variables within a block's parameter list?  
<details>
  <summary>Answer</summary>
  <p>

Variables that appear after a semicolon in a block's parameter list are guaranteed to be local to the block.
  
  </p>
</details>

- What is the synonym of `Enumerable#include?`?  
<details>
  <summary>Answer</summary>
  <p>

`Enumerable#member?`
  
  </p>
</details>

- Can a collection be modified while it is being iterated upon?  
<details>
  <summary>Answer</summary>
  <p>

Yes.
  
  </p>
</details>

- Is a block an object?  
<details>
  <summary>Answer</summary>
  <p>

No. A block is a syntactic structure of the interpreter. A block can be converted to a Proc object.
  
  </p>
</details>

- What is the synonym of `Enumerable#collect`?  
<details>
  <summary>Answer</summary>
  <p>

`Enumerable#map`
  
  </p>
</details>

- What is the synonym of `Enumerable#find`?  
<details>
  <summary>Answer</summary>
  <p>

`Enumerable#detect`
  
  </p>
</details>

- What is the synonym of `Enumerable#select`?  
<details>
  <summary>Answer</summary>
  <p>

`Enumerable#find_all`
  
  </p>
</details>

- What is the opposite of `Enumerable#select`?  
<details>
  <summary>Answer</summary>
  <p>

`Enumerable#reject`
  
  </p>
</details>

- What is the synonym of `Enumerable#inject`?  
<details>
  <summary>Answer</summary>
  <p>

`Enumerable#reduce`
  
  </p>
</details>

- Why might you use `#each` instead of `for/in`?  
<details>
  <summary>Answer</summary>
  <p>

It's the "Ruby way" - an example of how Ruby defines methods that mimic natural language concepts. Iterator methods such as `#each` read more naturally. `#each` is a block so it defines a new variable scope. `for/in` depends on the existence of `#each` which implies that `#each` is a more fundamental aspect of the language.
  
  </p>
</details>

- What happens if a block is passed two arguments but only accepts one argument?  
<details>
  <summary>Answer</summary>
  <p>

Nothing. Only the first argument will be passed to the block.
  
  </p>
</details>

- How is a block anonymous?  
<details>
  <summary>Answer</summary>
  <p>

It doesn't have a name. It doesn't exist beyond it's execution unless converted to a Proc object.
  
  </p>
</details>

- How does block invocation differ from method invocation?  
<details>
  <summary>Answer</summary>
  <p>

Ruby will throw an exception if more than the expected number of arguments are passed to a method. A block will simply ignore the extra values.
  
  </p>
</details>

# 6. Methods

- Does Ruby support method overloading?  
<details>
  <summary>Answer</summary>
  <p>

No.
  
  </p>
</details>

- How might you test the presence of a method?  
<details>
  <summary>Answer</summary>
  <p>

`Object#respond_to?` or `Module#method_defined?`
  
  </p>
</details>

- What is the meaning of `self`?  
<details>
  <summary>Answer</summary>
  <p>

The current object.
  
  </p>
</details>

- What does a bang `!` at the end of a method signify?  
<details>
  <summary>Answer</summary>
  <p>

That it should be with caution. Methods with this naming convention typically perform a mutation on the receiver object.
  
  </p>
</details>

- What is a mutator method?  
<details>
  <summary>Answer</summary>
  <p>

A method which alters the internal state of the object receiver.
  
  </p>
</details>

- Is a method an object?  
<details>
  <summary>Answer</summary>
  <p>

No, however, a `Method` object is of course, an object.
  
  </p>
</details>

- What is a predicate in the context of Ruby method naming conventions?  
<details>
  <summary>Answer</summary>
  <p>

A method that answers a question posed by the method invocation or method name. Predicates typically return a boolean.
  
  </p>
</details>

- Are instance methods public or private?  
<details>
  <summary>Answer</summary>
  <p>

They are public by default. You can change their visibility using `Module#private`, `Module#protected`, or back again using `Module#public`.
  
  </p>
</details>

- When might you explicitly use the `return` statement.  
<details>
  <summary>Answer</summary>
  <p>

To return from a method prematurely.
  
  </p>
</details>

- Why might you want to alias a method?  
<details>
  <summary>Answer</summary>
  <p>

To create a synonym for an existing method that is more readable or appropriate in the context of some problems or to add functionality to an existing method.
  
  </p>
</details>

- How might you send a message to a private method of a receiver object from outside the scope of the receiver object?  
<details>
  <summary>Answer</summary>
  <p>

`Object#send`
  
  </p>
</details>

- How would you typically prevent future modifications to an object?  
<details>
  <summary>Answer</summary>
  <p>

`#freeze`
  
  </p>
</details>

- How is the invocation of a private method different than the invocation of a public method from within its defining class?  
<details>
  <summary>Answer</summary>
  <p>

It must be referenced in a functional manner without an explicit receiver object and not on the class object itself or on the current object `self`.
  
  </p>
</details>

- Can method names be capitalized?  
<details>
  <summary>Answer</summary>
  <p>

Yes, but the convention is that they are not.
  
  </p>
</details>

- What is the difference between private and protected methods?  
<details>
  <summary>Answer</summary>
  <p>

A private method can only be called by any instance methods of the defining class or any subclasses and must be invoked in a functional style and not explicitly on `self` such as with `self.my_method`. A protected method may be explicitly invoked by any instance of the defining class, and is not restricted to implicit invocation on `self`.
  
  </p>
</details>

- What is a singleton method?  
<details>
  <summary>Answer</summary>
  <p>

A method that is available only on a single object.
  
  </p>
</details>

- How does `return` differ from within a method than from within a block?  
<details>
  <summary>Answer</summary>
  <p>

`return` within a method returns from the method. `return` within a block returns from its lexically enclosing method.
  
  </p>
</details>

- Are class methods public or private?  
<details>
  <summary>Answer</summary>
  <p>

They are public by default. You can change their visibility using `Module#private_class_method` and back again using `Module#public_class_method`.
  
  </p>
</details>

- Does a method return a value if it does not contain an expression?  
<details>
  <summary>Answer</summary>
  <p>

Yes, it returns `nil`.
  
  </p>
</details>

- If a method is declared outside a class or module definition at the top level, where does it live?  
<details>
  <summary>Answer</summary>
  <p>

As a private instance method of `Object`, whose value of `self` resolves to the special "main" object.
  
  </p>
</details>

- What is the origin of the "keywords" `public`, `private`, and `protected`?  
<details>
  <summary>Answer</summary>
  <p>

They are instance methods of the `Module` class. Since `Class` subclasses `Module`, these methods can be invoked without an explicit reference to `self` such as with `self.private`.
  
  </p>
</details>

- How do you define a private class method?  
<details>
  <summary>Answer</summary>
  <p>

Define the class method and call `Module#private_class_method` with an argument as a symbol of the class method name.
  
  </p>
</details>

- Name at least two ways to disable methods.  
<details>
  <summary>Answer</summary>
  <p>

`undef method_name`, `Module#remove_method`, `Module#undef_method`
  
  </p>
</details>

- What is the difference between `Module#remove_method` and `Module#undef_method`?  
<details>
  <summary>Answer</summary>
  <p>

`Module#undef_method` prevents any invocation of the method through an instance of the class, while `Module#remove_method` will remove the method definition from the class, but not prevent inherited methods of the same name from being invoked.
  
  </p>
</details>

- Explain how Ruby syntax supports keyword arguments in parameters lists?  
<details>
  <summary>Answer</summary>
  <p>

You can leave off the curly brackets from a hash in a parameter list, assuming it is the last argument in the list.
  
  </p>
</details>

# 7. Procs and Lambdas

- What is a Proc?
<details>
  <summary>Answer</summary>
  <p>

Everyone usually confuses procs with blocks, but the strongest rubyist can grok the true meaning of the question.

Essentially, Procs are anonymous methods (or nameless functions) containing code. They can be placed inside a variable and passed around like any other object or scalar value. They are created by Proc.new, lambda, and blocks (invoked by the yield keyword).

Note: Procs and lambdas do have subtle, but important, [differences](http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls#Understanding_blocks.2C_Procs_and_methods) in ruby v1.8.6. However, I wouldn't expect a candidate talk about these nitty-gritty details during an interview.

```ruby
# wants a proc, a lambda, AND a block
def three_ways(proc, lambda, &block)
  proc.call
  lambda.call
  yield # like block.call
  puts "#{proc.inspect} #{lambda.inspect} #{block.inspect}"
end

anonymous = Proc.new { puts "I'm a Proc for sure." }
nameless  = lambda { puts "But what about me?" }

three_ways(anonymous, nameless) do
  puts "I'm a block, but could it be???"
end
 #=> I'm a Proc for sure.
 #=> But what about me?
 #=> I'm a block, but could it be???
 #=> #<Proc:0x00089d64> #<Proc:0x00089c74> #<Proc:0x00089b34>
```
  
  </p>
</details>


- What are the two varieties of Proc objects?  
<details>
  <summary>Answer</summary>
  <p>

Procs and lambdas.
  
  </p>
</details>

- What can be said about a method argument that is prefixed with `&`?  
<details>
  <summary>Answer</summary>
  <p>

It will refer to the calling block as a named Proc object. It must be the last argument in the parameter list.
  
  </p>
</details>

- What is the main difference between procs and lambdas?  
<details>
  <summary>Answer</summary>
  <p>

Calling a lambda is more akin to invoking a method where a return statement in a lambda will return from the lambda itself, instead of returning from the lexically enclosing method, as procs do. Adding to this notion, lambdas must be invoked with the exact number of arguments such as is required by method invocation, whereas procs are more flexible in receiving arguments.
  
  </p>
</details>

- Does an object have to be a Proc object for a `&` to be prefixed to it in a parameter list?  
<details>
  <summary>Answer</summary>
  <p>

No, `&` can appear before any object having a `#to_proc` method.
  
  </p>
</details>

- What is the difference between Proc invocation and lambda invocation?  
<details>
  <summary>Answer</summary>
  <p>

A block must be associated with lambda invocation. Lambdas must be invoked with the exact number of arguments such as is required by method invocation, whereas procs are more flexible in receiving arguments.
  
  </p>
</details>

- When might you encounter a `LocalJumpError`?  
<details>
  <summary>Answer</summary>
  <p>

You might typically encounter this exception when attempting to yield when no block is given. You might also encounter this exception when attempting to return from a method that has already returned such as if you attempt to return from a Proc object whose lexically enclosing method has already returned.
  
  </p>
</details>

# 8. Closures

- Describe a closure in Ruby.  
<details>
  <summary>Answer</summary>
  <p>

A closure is an object that is both an invocable function together with a variable binding. The object retains access to the local variables that were in scope at the time of the object definition.
  
  </p>
</details>

- Does a closure in Ruby retain variables by value or by reference?  
<details>
  <summary>Answer</summary>
  <p>

By reference; the closure also extends the lifetimes of its variables.
  
  </p>
</details>

- A closure's reference to its variables is said to be dynamically bound. What does this mean?  
<details>
  <summary>Answer</summary>
  <p>

The values of the variables are resolved when the Proc object is executed.
  
  </p>
</details>

- Is it possible to alter a closure?  
<details>
  <summary>Answer</summary>
  <p>

Yes, the binding of a closure can be altered using `#binding`.
  
  </p>
</details>

# 9. Method Objects

- What must you first do before you can invoke an `UnboundMethod` object?  
<details>
  <summary>Answer</summary>
  <p>

Bind it to a receiver object using `UnboundMethod#bind`.
  
  </p>
</details>

- Are method objects closures?  
<details>
  <summary>Answer</summary>
  <p>

No.
  
  </p>
</details>

- How do you obtain a `Method` object from an existing module/class?  
<details>
  <summary>Answer</summary>
  <p>

Using `Object#method`
  
  </p>
</details>

- How do you obtain an `UnboundMethod` object from an existing module/class?  
<details>
  <summary>Answer</summary>
  <p>

Using `Module#instance_method`
  
  </p>
</details>

- What are different ways to invoke a method in ruby ?
<details>
  <summary>Answer</summary>
  <p>

```ruby
object = Object.new
puts object.object_id
 #=> 282660

puts object.send(:object_id)
 #=> 282660

puts object.method(:object_id).call # (Kudos to Ezra)
 #=> 282660
```
  </p>
</details>

# 10. Constants

- Are constants public or private?  
<details>
  <summary>Answer</summary>
  <p>

Public.
  
  </p>
</details>

- What happens if you attempt to define a constant on a class from outside the class?  
<details>
  <summary>Answer</summary>
  <p>

It defines successfully since constants are publicly accessible and assignable.
  
  </p>
</details>

- What happens to a constant which is not assigned?  
<details>
  <summary>Answer</summary>
  <p>

It does not exist.
  
  </p>
</details>

# 11. Classes

- What is a class ?

<details>
  <summary>Answer</summary>
  <p>

  A text-book answer: classes are a blue-print for constructing computer models for real or virtual objects... boring.

  In reality: classes hold data, have methods that interact with that data, and are used to instantiate objects.

  Classes in ruby espcially can be described as an Object that can create other objects and define its behavior

  Like this.
  ```ruby
  class WhatAreClasses
    def initialize
      @data = "I'm instance data of this object. Hello."
    end

    def my_method
      puts @data.gsub("instance", "altered")
    end
  end

  object = WhatAreClasses.new
  object.my_method
  #=> I'm altered data of this object. Hello.
  ```

  </p>
</details>

- What is an Object

<details>
  <summary>Answer</summary>

  <p>
  An instance of class.
  It is also root class in ruby.
  Classes themselves descend from the Object root class.
  </p>

</details>

- What is the difference between class and module ?

<details>
  <summary>Answer</summary>

  <p>
  Modules serve as a mechanism for namespaces.

```ruby
module ANamespace
  class AClass
    def initialize
      puts "Another object, coming right up!"
    end
  end
end

ANamespace::AClass.new
#=> Another object, coming right up!
```
  Also, modules provide as a mechanism for multiple inheritance via mix-ins and cannot be instantiated like classes can.

```ruby
module AMixIn
  def who_am_i?
    puts "An existentialist, that's who."
  end
end

# String is already the parent class
class DeepString < String
  # extend adds instance methods from AMixIn as class methods
  extend AMixIn
end

DeepString.who_am_i?
 #=> An existentialist, that's who.

AMixIn.new
 #=> NoMethodError: undefined method ‘new’ for AMixIn:Module
 ```
 
  </p>

</details>

- What are the three levels of method access control for classes and modules? What do they imply about the method?

<details>
  <summary>Answer</summary>
  <p>

All methods, no matter the access control, can be accessed within the class. But what about outside callers?

Public methods enforce no access control -- they can be called in any scope.

Protected methods are only accessible to other objects of the same class.

Private methods are only accessible within the context of the current object.

```ruby
class AccessLevel
  def something_interesting
    another = AccessLevel.new
    another.public_method
    another.protected_method
    another.private_method
  end

  def public_method
    puts "Public method. Nice to meet you."
  end

  protected

  def protected_method
    puts "Protected method. Sweet!"
  end

  private 

  def private_method
    puts "Incoming exception!"
  end
end

AccessLevel.new.something_interesting
 #=> Public method.  Nice to meet you.
 #=> Protected method.  Sweet!
 #=> NoMethodError: private method ‘private_method’ called for
 #=>  #<AccessLevel:0x898c8>
 ```
 
  </p>
</details>


- What is the difference between an instance variable and a class variable?  
<details>
  <summary>Answer</summary>
  <p>

A class variable is evaluated in reference to the class object created by the enclosing class definition while an instance variable is evaluated in reference to `self`. Instance variables cannot be referenced outside of instance methods.
  
  </p>
</details>

- Why must a class name begin with a capital letter?  
<details>
  <summary>Answer</summary>
  <p>

Because the `class` keyword creates a new constant that refers to the class and constants begin with a capital letter.
  
  </p>
</details>

- Is `#initialize` an instance method or a class method?  
<details>
  <summary>Answer</summary>
  <p>

An instance method.
  
  </p>
</details>

- What is the difference between a class variable and a class instance variable?  
<details>
  <summary>Answer</summary>
  <p>

Class instance variables are instance variables of a class. Class instance variables cannot be used within instance methods.
  
  </p>
</details>

- What is a singleton?  
<details>
  <summary>Answer</summary>
  <p>

A class having only a single instance.
  
  </p>
</details>

- How might you create a singleton?  
<details>
  <summary>Answer</summary>
  <p>

By including the `Singleton` module.
  
  </p>
</details>

- Can you define accessor methods for class instance variables?  
<details>
  <summary>Answer</summary>
  <p>

Yes, if they are defined as singleton methods of the class.
  
  </p>
</details>

- Can classes be nested?  
<details>
  <summary>Answer</summary>
  <p>

Yes.
  
  </p>
</details>

- Is `#initialize` public or private?  
<details>
  <summary>Answer</summary>
  <p>

Private by default.
  
  </p>
</details>

- What does `Class#allocate` do?  
<details>
  <summary>Answer</summary>
  <p>

It creates an uninitialized instance of a class.
  
  </p>
</details>

- What is an eigenclass?  
<details>
  <summary>Answer</summary>
  <p>

An anonymous class associated with an object. An object's singleton methods are instance methods of its associated eigenclass.
  
  </p>
</details>

- What is the relationship between singleton methods and class methods?  
<details>
  <summary>Answer</summary>
  <p>

Class methods are singleton methods of the eigenclass associated with the class object.
  
  </p>
</details>

- What is `Class::new`?  
<details>
  <summary>Answer</summary>
  <p>

A class method of the `Class` object which creates new classes.
  
  </p>
</details>

- If `Class` `B` is nested within `Class` `A`, and there exists a class method on `A`, does `Class` `B` then have access to this instance method on `Class` `A`?  
<details>
  <summary>Answer</summary>
  <p>

No. Nesting one class within another does not give the inner class any special access to the methods or variables of the outer class.
  
  </p>
</details>

- Are eigenclasses inherited?  
<details>
  <summary>Answer</summary>
  <p>

The eigenclasses of an object are inherited from the eigenclasses of the superclass of the class object. An eigenclass of an object instance stands alone and does not inherit from any other classes.
  
  </p>
</details>

- What happens to any return value of `#initialize`?  
<details>
  <summary>Answer</summary>
  <p>

It is ignored.
  
  </p>
</details>

- What is a factory method?  
<details>
  <summary>Answer</summary>
  <p>

An initialization method that creates specialized instances of a class.
  
  </p>
</details>

- What is the method to run initialization code on copied instances of an object?  
<details>
  <summary>Answer</summary>
  <p>

`#initialize_copy`
  
  </p>
</details>

- Does `#initialize_copy` override `#initialize`?  
<details>
  <summary>Answer</summary>
  <p>

No.
  
  </p>
</details>

- What does it mean that `Object#dup` and `#clone` perform shallow copies?  
<details>
  <summary>Answer</summary>
  <p>

The instance variables of the copy are copied by reference rather than by value.
  
  </p>
</details>

- What is the difference between `Object#dup` and `#clone`?  
<details>
  <summary>Answer</summary>
  <p>

`#clone` copies the frozen state of an object and any singleton methods of an object while `Object#dup` does neither.
  
  </p>
</details>

# 12. Modules

- What are two main functions of modules?  
<details>
  <summary>Answer</summary>
  <p>

As mixins, as namespaces...
  
  </p>
</details>

- Can a module be subclassed?  
<details>
  <summary>Answer</summary>
  <p>

No.
  
  </p>
</details>

- What happens when a class includes a module?  
<details>
  <summary>Answer</summary>
  <p>

The instance methods of the module become instance methods of the class.
  
  </p>
</details>

- What happens when an object extends a module?  
<details>
  <summary>Answer</summary>
  <p>

The instance methods of the module become singleton methods on the object.
  
  </p>
</details>

- What is the superclass of `Class`?  
<details>
  <summary>Answer</summary>
  <p>

`Module`
  
  </p>
</details>

- Why must module names begin with a capital letter?  
<details>
  <summary>Answer</summary>
  <p>

Because the `module` keyword creates a new constant that refers to the module and constants begin with a capital letter.
  
  </p>
</details>

- How would you check if a module has been included by an object?  
<details>
  <summary>Answer</summary>
  <p>

Using `#is_a?` such as with `my_obj.is_a? MyModule`.
  
  </p>
</details>

- What does `Module#module_function` do?  
<details>
  <summary>Answer</summary>
  <p>

Makes class copies of the specified methods and makes instance methods private.
  
  </p>
</details>

# 13. Structs

- What is a `Struct` in Ruby?  
<details>
  <summary>Answer</summary>
  <p>

A core Ruby class that generates other classes containing accessor methods for the specified fields.
  
  </p>
</details>

- Can methods be added to a `Struct`?  
<details>
  <summary>Answer</summary>
  <p>

Yes.
  
  </p>
</details>

# 14. Inheritance

- What's the difference between `Object#is_a?` and `Object#instance_of?`?  
<details>
  <summary>Answer</summary>
  <p>

`Object#instance_of?` ignores inheritance and any mixed-in modules.
  
  </p>
</details>

- If the `super` keyword is used in a method without any arguments, which if any arguments get passed to the superclass method?  
<details>
  <summary>Answer</summary>
  <p>

All arguments that were passed to the current subclass method will be passed to the superclass method.
  
  </p>
</details>

- Are singleton methods inherited?  
<details>
  <summary>Answer</summary>
  <p>

No, since they are not defined by a class and thus are unrelated to the inheritance mechanism.
  
  </p>
</details>

- Are class methods inherited?  
<details>
  <summary>Answer</summary>
  <p>

Yes.
  
  </p>
</details>

- Are constants inherited?  
<details>
  <summary>Answer</summary>
  <p>

Yes.
  
  </p>
</details>

- Are class variables inherited?  
<details>
  <summary>Answer</summary>
  <p>

No. The behavior is different than inheritance. Any alteration of a class variable by a subclass affects that class variable in the superclass and all other subclasses of the superclass.
  
  </p>
</details>

- Why might you want to avoid the use of class variables?  
<details>
  <summary>Answer</summary>
  <p>

Their values can be changed at any point in the inheritance chain which can cause unexpected behavior in parent classes or subclasses which use those class variables.
  
  </p>
</details>

- What should you watch out for when subclassing a class that is unknown to you?  
<details>
  <summary>Answer</summary>
  <p>

Overriding private methods or overwriting class variables.
  
  </p>
</details>

- How might you prevent a method on a superclass from being inherited by a subclass?  
<details>
  <summary>Answer</summary>
  <p>

Override the method in the subclass or `undef` the method in the subclass.
  
  </p>
</details>

# 15. Metaprogramming

- Can `Module#attr_reader` be considered an example of metaprogramming?  
<details>
  <summary>Answer</summary>
  <p>

Yes, since it creates getter methods at the time of the enclosing class definition.
  
  </p>
</details>

- How might you access an instance variable of a receiver object from outside the scope of the receiver object?  
<details>
  <summary>Answer</summary>
  <p>

With an accessor method or using `Object#instance_variable_get`, `BasicObject#instance_eval`, or `Binding#eval`.
  
  </p>
</details>

- Which method is invoked when a method is not found?  
<details>
  <summary>Answer</summary>
  <p>

The nearest `#method_missing`
  
  </p>
</details>

- How can you open an eigenclass from within its associated class?  
<details>
  <summary>Answer</summary>
  <p>

`class << self`
  
  </p>
</details>

- What is a binding?  
<details>
  <summary>Answer</summary>
  <p>

A representation of an object's variable bindings at some moment.
  
  </p>
</details>

- What is Ruby's reflection API?  
<details>
  <summary>Answer</summary>
  <p>

A collection of methods mostly defined by `Kernel`, `Object`, and `Module` that allow a program to examine its own state and structure.
  
  </p>
</details>

- Which method is invoked when a constant is not found?  
<details>
  <summary>Answer</summary>
  <p>

The nearest `#const_missing`
  
  </p>
</details>

- `Module#define_method` accepts how many and of what types of arguments?  
<details>
  <summary>Answer</summary>
  <p>

A symbol as the method name and either a block or a `Method` object as the method body.
  
  </p>
</details>

- Can `#eval` accept a block?  
<details>
  <summary>Answer</summary>
  <p>

No, `#eval` accepts a string. However, `Module#class_eval` and `BasicObject#instance_eval` can accept blocks.
  
  </p>
</details>

- How might you obtain a reference to an eigenclass from within its associated class?  
<details>
  <summary>Answer</summary>
  <p>

`Object#singleton_class`, `eigenclass = class << self; self; end`
  
  </p>
</details>

- How might you alter method visibility from outside a class definition?  
<details>
  <summary>Answer</summary>
  <p>

Using `Module#class_eval`
  
  </p>
</details>

- What is the difference between `BasicObject#instance_eval` and `BasicObject#instance_exec`?  
<details>
  <summary>Answer</summary>
  <p>

`BasicObject#instance_exec` can only accept a block, not a string, and it can accept arguments and pass them to the block, allowing the block to be evaluated in the context of the receiver object with parameters whose values come from the block.
  
  </p>
</details>

- Where do `#class_variable_get` and `#class_variable_set` live in the object model?  
<details>
  <summary>Answer</summary>
  <p>

`Module`
  
  </p>
</details>

- Where do `#instance_variable_get` and `#instance_variable_set` live in the object model?  
<details>
  <summary>Answer</summary>
  <p>

`Object`
  
  </p>
</details>

- Where do `#local_variables` and `#global_variables` live in the object model?  
<details>
  <summary>Answer</summary>
  <p>

`Kernel`
  
  </p>
</details>

# 16. Loading Modules, Files, and Gems

### 16.0.7. Loading

- What is `$LOAD_PATH`?  
<details>
  <summary>Answer</summary>
  <p>

A global array of strings of the directories to be searched when loading files with the load and require methods. `$LOAD_PATH` is equivalent to `$:`.
  
  </p>
</details>

- What is the difference between `Kernel#require` and `Kernel#load`?  
<details>
  <summary>Answer</summary>
  <p>

`Kernel#require` can load binary extensions. `Kernel#require` does not require a filename extension. `Kernel#require` prevents multiple loads of the same file path. `Kernel#load` loads the specified file at the current `$SAFE` level while `Kernel#require` loads the specified file with a `$SAFE` level of 0.
  
  </p>
</details>

- Does a file loaded with `Kernel#require` or `Kernel#load` have access to the local variables of the referencing file?  
<details>
  <summary>Answer</summary>
  <p>

No.
  
  </p>
</details>

- What is the difference between `Kernel#require` and `Kernel#require_relative`?  
<details>
  <summary>Answer</summary>
  <p>

`Kernel#require_relative` ignores the load path.
  
  </p>
</details>

- What does `Kernel#autoload` do?  
<details>
  <summary>Answer</summary>
  <p>

Allows lazy-loading of files when a constant assigned to a file is first referenced.
  
  </p>
</details>

### 16.0.8. Files

- What does `File::expand_path` do?  
<details>
  <summary>Answer</summary>
  <p>

Converts a relative path to a fully qualified path.
  
  </p>
</details>

- What method(s) in class `Dir` can be used to list the contents of a directory?  
<details>
  <summary>Answer</summary>
  <p>

`Dir::entries`, `Dir::foreach`, `Dir#each`...
  
  </p>
</details>

- What is an `IO` object?  
<details>
  <summary>Answer</summary>
  <p>

An IO object is an instance of class `IO` that can be used for reading or writing binary data to and from a file.
  
  </p>
</details>

### 16.0.9. Gems

- Are RubyGems installation directories included in `$LOAD_PATH`?  
<details>
  <summary>Answer</summary>
  <p>

Yes.
  
  </p>
</details>

- If more than one version of a Gem is installed, which version will be used?  
<details>
  <summary>Answer</summary>
  <p>

The Gem with the highest version number.
  
  </p>
</details>

# 17. Security

- What can you say about objects derived from tainted objects?  
<details>
  <summary>Answer</summary>
  <p>

They will also be tainted.
  
  </p>
</details>

- What is the default `$SAFE` level?  
<details>
  <summary>Answer</summary>
  <p>

0
  
  </p>
</details>

- What happens when you attempt to lower the `$SAFE` level?  
<details>
  <summary>Answer</summary>
  <p>

The `$SAFE` level cannot be lowered; it can only be raised.
  
  </p>
</details>

- What is the difference between taint and trust?  
<details>
  <summary>Answer</summary>
  <p>

Taint is derived from the environment such as the command line, environment variables, files, sockets, etc..., while trust is derived from the `$SAFE` level of the originating code. Untrusted objects are both untrusted and tainted.
  
  </p>
</details>

# 18. Exceptions

- What error is raised if a method is passed the wrong number of arguments?  
<details>
  <summary>Answer</summary>
  <p>

`ArgumentError`
  
  </p>
</details>

- What error is raised if method name resolution fails?  
<details>
  <summary>Answer</summary>
  <p>

`NoMethodError`
  
  </p>
</details>

- The superclass of `StandardError` is __.  
<details>
  <summary>Answer</summary>
  <p>

`Exception`
  
  </p>
</details>

- What does the default implementation of `BasicObject#method_missing` do?  
<details>
  <summary>Answer</summary>
  <p>

Raises a `NoMethodError`.
  
  </p>
</details>

- What happens if you attempt to redefine `BasicObject#__send__`?  
<details>
  <summary>Answer</summary>
  <p>

Ruby issues a warning.
  
  </p>
</details>

# 19. Debugging

- What is the difference between `#to_s` and `#inspect`?  
<details>
  <summary>Answer</summary>
  <p>

`#inspect` is the same as `#to_s`, except some classes redefine `#inspect` to provide output that is more helpful for debugging.
  
  </p>
</details>

- What is the difference between `#puts` and `#p`?  
<details>
  <summary>Answer</summary>
  <p>

`#p` converts objects to strings with an `#inspect` method and returns argument(s) as a result (useful to inject directly into the method argument list). `#puts` uses `#to_s` and returns `nil`.
  
  </p>
</details>

- Which Ruby interpreter option enables debugging?  
<details>
  <summary>Answer</summary>
  <p>

`-d` / `--debug`
  
  </p>
</details>

- What is the global variable for the last exception raised?  
<details>
  <summary>Answer</summary>
  <p>

`$ERROR_INFO` equivalent to `$!`
  
  </p>
</details>

- How can you obtain the current state of the call stack?  
<details>
  <summary>Answer</summary>
  <p>

Using `Exception#backtrace` (state at exception raise), `Thread.current.backtrace` (current state) or `Kernel#caller` (does not include current line)
  
  </p>
</details>

- What does `Kernel#__method__` return?  
<details>
  <summary>Answer</summary>
  <p>

The name of the currently executing method as a symbol.
  
  </p>
</details>

- What is the synonym of `Kernel#__method__`?  
<details>
  <summary>Answer</summary>
  <p>

`Kernel#__callee__` (the difference since Ruby 2.0 is that `__callee__` returns the name of an aliased method, if any).
  
  </p>
</details>

# 20. The Ruby Environment and the Interpreter

- What is the difference between `#puts` and `#print`?  
<details>
  <summary>Answer</summary>
  <p>

`#puts` appends a newline character to the output. `#print` prints a value of special variable `$_` when called without arguments.
  
  </p>
</details>

- Which Ruby interpreter option allows running of one-line scripts?  
<details>
  <summary>Answer</summary>
  <p>

`-e`
  
  </p>
</details>

- Where do the curly brackets to define a hash literal `{}` exist in the object model?  
<details>
  <summary>Answer</summary>
  <p>

It does not exist within the object model - it is a function of the interpreter.
  
  </p>
</details>

- What is the default encoding in MRI?  
<details>
  <summary>Answer</summary>
  <p>

UTF-8
  
  </p>
</details>

- How does Ruby know that a setter method such as `X#[]=` should be called in the expression `x.field = []`?  
<details>
  <summary>Answer</summary>
  <p>

It is a syntactical conversion in the interpreter.
  
  </p>
</details>

- What is the global constant to access arguments specified on the command line?  
<details>
  <summary>Answer</summary>
  <p>

`ARGV`
  
  </p>
</details>

- Which Ruby interpreter option enables warnings about deprecated or problematic code?  
<details>
  <summary>Answer</summary>
  <p>

`-w`
  
  </p>
</details>

- In MRI, which objects are not subject to garbage collection?  
<details>
  <summary>Answer</summary>
  <p>

Symbols, but in version 2.2 [was implemented symbol GC](http://www.sitepoint.com/symbol-gc-ruby-2-2/).
  
  </p>
</details>

- What module in the standard library enables English language alternatives to terse global variables?  
<details>
  <summary>Answer</summary>
  <p>

`English`
  
  </p>
</details>



# 21. Modules

- What is the function of modules in Ruby?
<details>
  <summary>Answer</summary>
  <p>
  To provide namespaces.  To provide a mechanism for multiple inheritance.  To facilitate code reuse.
  </p>
</details>

- What is the difference between a module and class?

<details>
  <summary>Answer</summary>

  <p>
    A module cannot be instantiated.
  </p>
</details>

- What is the difference between _extend_ and _include_?

<details>
  <summary>Answer</summary>
  <p>
  - _extend_ adds the instance methods of a module to a class as class methods.
  -  _include_ adds the instance methods of a module to a class as instance methods.
  </p>
</details>

# 22. Methods & blocks

- What are the three levels of method access control available in Ruby?

<details>
  <summary>Answer</summary>

  <p>
  _private_: These methods are not accessible on instances of the class.  They are only accessible internally when the receiver is _self_.
  _protected_: These methods are accessible internally to the class and within subclasses of the class. (TODO: expand answer)
  _public_: These methods are accessible everywhere, including on the instance.
  </p>
</details>

   
- What are Procs in Ruby?  How do they compare to closures in JS?**

<details>
  <summary>Answer</summary>
  <p>
  A Proc is essentially an anonymous function encapsulated as an object which can be passed around as a variable.  Procs have access to the local variables from the context in which they were defined.  Unlike in JS they do not have access to the _self_ (analygous to _this_) of the context.
  </p>
</details>

# 23. Exception handling

- How do you handle exceptions in Ruby code?
<details>
  <summary>Answer</summary>
  <p>
  Using _begin_ and _rescue_
  </p>
</details>

- Why is it advised to rescue from _StandardError_ rather than _Exception_?

<details>
  <summary>Answer</summary>

  <p>

`StandardError` is a subclass of `Exception`.  Rescuing `Exception` rescues program signalling exceptions which are needed to signal, for example when a program should shut down.

  </p>
</details>

# 24. Operators / Truthiness

- What is the difference between `and`/`or` and `&&`/`||`?  What is the result of `a = nil and true`?

<details>
  <summary>Answer</summary>

  <p>
  `and` and `or` have higher precedence than the assignment operator (`=`) whereas `&&` and `||` have lower precedence.
  The result is that `a` is assigned the value `nil` and the result of the expression is `nil`.
  </p>
</details>
   
- What values are "falsey" in Rails?  Or, which values are "truthy"?  What is the result of `a = 0 || 1`?

<details>
  <summary>Answer</summary>
  <p>

    Only `false` and `nil` evaluate to false.  Everything else is "truthy".
    The result is that `a` is assigned the value `0` and the result of the expression is `0`.

  </p>
</details>
   
# 25. Metaprogramming

- What is the function of `method_missing`?  How is it used in meta-programming in Ruby?
<details>
  <summary>Answer</summary>
  <p>

Poor performance.
  </p>
</details>

- What is a DSL (Domain Specific Language) and why is Ruby a popular language to build DSLs in?
TODO
<details>
  <summary>Answer</summary>

  <p>

  </p>
</details>

# Testing

- What is unit testing (in classical terms)? What is the primary technique when writing a test?
<details>
  <summary>Answer</summary>

  <p>

The strongest candidates should be quite comfortable with test or behavior driven development.

Unit testing, simply put, is testing methods -- the smallest unit in object-oriented programming. Strong candidates will argue that it allows a developer to flesh out their API before it's consumed by other systems in the application.

The primary way to achieve this is to assert that the actual result of the method matches an expected result.

```ruby
require "test/unit"

class Brokened
  def uh_oh
    "I needs fixing"
  end
end

class BrokenedTest < Test::Unit::TestCase
  def test_uh_oh
    actual = Brokened.new
    assert_equal("I'm all better!", actual.uh_oh)
  end
end
 #=> Started
 #=> F
 #=> Finished in 0.663831 seconds.
 #=> 
 #=>   1) Failure:
 #=> test_uh_oh:11
 #=> <"I'm all better!"> expected but was
 #=> <"I needs fixing">.
 #=> 
 #=> 1 tests, 1 assertions, 1 failures, 0 errors
 ```
 
  </p>
</details>


# Reference

- I have just accumulated questions from various places. I have also added a few of my own.

- https://gist.github.com/ryansobol/5252653
- http://shawnlindsey.com/blog/ruby-test-questions-the-great-big-ruby-test/
- http://shawnlindsey.com/blog/answers/
- https://www.toptal.com/ruby-on-rails#hiring-guide
- https://www.toptal.com/ruby/interview-questions
- https://www.quora.com/How-do-I-prepare-for-an-entry-level-Ruby-on-Rails-developer-interview-What-questions-should-I-expect
- https://github.com/afeld/rails_interview_questions
- https://github.com/rishiip/ruby-on-rails-interview-questions
- https://gist.github.com/ryansobol/5252653
- http://www.rubyinside.com/tips-hiring-ruby-web-developers-4757.HTML
- https://rubygarage.org/blog/how-to-interview-your-ruby-on-rails-developer
- http://anilpunjabi.tumblr.com/post/25948339235/ruby-and-rails-interview-questions-and-answers
- http://career.guru99.com/top-34-ruby-on-rail-interview-questions/
- http://blog.mypath.io/ruby-on-rails-interview-questions-that-will-land-you-the-job/
- https://srikantmahapatra.wordpress.com/2013/11/07/ruby-on-rails-interview-questions-and-answers/
- https://www.codementor.io/ruby-on-rails/tutorial/ruby-on-rails-interview-questions
- http://www.careerride.com/ruby-on-rails-interview-questions.aspx