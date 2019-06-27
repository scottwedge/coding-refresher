## Chapter 1

### Identifiers

- *What's the difference between ruby, Ruby and RUBY ?*
<details>
<summary>Answer</summary>

- ruby - interpreter
- Ruby - commonly used when referring to the programming language Ruby.
- RUBY - This is wrong. It's not an abbreviation like PERL or COBOL
</details>

- *What are different ruby identifiers ?*
<details>
<summary>Answer</summary>

1. variables
    - local
    - global
    - instance
    - class
1. constants
1. methods
1. keywords

</details>

- *list standard ruby conventions for naming*
    - *local variable*
    - *global variable*
    - *instance variable*
    - *class variable*
    - *constants*
    - *methods*
    - *keywords*
<details>
<summary>Answer</summary>

| variable | convention                                              |
| -------- | ------------------------------------------------------- |
| local    | first_name                                              |
| global   | $FIRST_NAME, $IDENTIFIER                                |
| instance | @first_name                                             |
| class    | @@first_name                                            |
| constant | PI, FIRST_NAME, LIMIT                                   |
| methods  | first_name, first_name=, firstname?, change_first_name! |
| keywords | language defined stuff, not under user control          |


</details>

### Objects in Ruby

- *Why are objects important than class ?*
<details>
<summary>Answer</summary>
Once an Object is instantiated (crated) through a class, the Object becomes independent of the class. Even though the class gave the object it's initial behaviors and states, the Object can behave differently.

</details>

- *message passing vs methods calling*
<details>
<summary>Answer</summary>

- message passing - any message can be sent to an Object. The object need not know whether it can respond to those message. The Object can decide how to act by using methods which may be same as the message.
- method - a sequence of instructions that can be called through a name.

</details>

- *what's the default object in ruby*
<details>
<summary>Answer</summary>
- self - it changes depending on the run time context
</details>


### IO and basics

- *puts vs print vs p*
<details>
<summary>Answer</summary>

- puts - add new line at the end if it's not already manually called.
- p - inspects the given object and prints it
- print - doesn't add new line. (in some OS implementations it might)

</details>

- *how to check for syntax?*
<details>
<summary>Answer</summary>

```ruby
ruby -cw file_name.rb
# Syntax OK
```
</details>

- *How to start irb with out line numbers*
<details>
<summary>Answer</summary>

```
irb --simple-prompt
```
</details>

- *How to get input from stream or user ?*
<details>
<summary>Answer</summary>

```ruby
my_num = gets.to_i
my_name = gets
print my_val
```
</details>

- chop vs chomp vs strip
<details>
<summary>Answer</summary>

- chop - snip last character
- chomp - remove line seperator at the end
- strip - remove all surrounding whitespace
</details>

- *How to print output ?*
- *How to read a file ?*

### Ruby installation dir structure

- *what is the library that should be required for getting the install path info*
<details>
<summary>Answer</summary>

rbconfig
</details>

- *what is the constant where config paths is present*
<details>
<summary>Answer</summary>

*RbConfig::CONFIG*
</details>

- *what are the main installation directory folders and it's corresponding keys on the config path hash*
<details>
<summary>Answer</summary>

- "bindir" - binaries - cmd line tools
- "rubylibdir" - the libraries written in ruby for ruby
- "archdir" - architecture specific files like .so compiled from C extensions
- "sitedir" - site admins custom ruby lib files
    - "sitelibdir"
    - "sitearchdir"
- "vendordir" - 3rd party libraries - downloaded 
    - "vendorlibdir"
    - "vendorarchdir"
- gems - this is a directory at the same level as site_ruby and vendor_ruby. This doesn't have a key in the CONFIG. This has the default gems that comes with the language itself.  

```
installation dir
    libdir
        (rubydir)
            rubylibdir
                archdir
        sitedir
            sitelibdir
            sitearchdir
        vendordir
            vendorlibdir
            vendorarchdir
        (gemsdir)
    bindir
```

</details>

- *What's the difference between sitedir and vendordir ?*
<details>
<summary>Answer</summary>
- sitedir - system administrator or side admin stores the 3rd librarires there
- vendorlib - a recently introduced folder for storing third party libraries.
</details>

### load, require , relative_require

- *what's the difference b/n feature, extension and library*
<details>
<summary>Answer</summary>

- Feature - a more abstract word, generally used in the context of _require_ statements.
- library - the actual ruby library files
- extension - more of a library written in C for ruby
</details>

- *what is the global variable that contains the load paths*
<details>
<summary>Answer</summary>

- __$:__ or __$LOAD_PATH__
```
ruby -e "puts $:"
```
</details>

- *What are three ways of loading a file ?*
<details>
<summary>Answer</summary>

- load
- require
- require_relative
</details>

- *what's the use of load path*
<details>
<summary>Answer</summary>

By default the load, require and require_relative searches for the files in load path if the file is not found in the current directory
</details>

- *what's the difference between three ways of loading files?*
<details>
<summary>Answer</summary>

| way to load file | desc                                                                                                                                                                                                                                                                                                                                                                                              | example                    |
| ---------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------- |
| load             | <p>- doesn't load eagerly (i.e) loads only when it sees the load statements</p><p>- (re)loads every time</p><p> - "./" is not needed since load behaves as if "." is included in the load path</p><p> - full file name with extension should be given</p><p> - usually used during development</p>                                                                                                | load "my_file.rb"          |
| require          | <p>- loads eagerly (i.e) loads at the beginning like a feature</p><p> - tracks list of already loaded files and doesn't reload</p><p> - "./" is required, alternative is to add "." to load path array $:.ushift(".")</p><p> - since this loading a feature, file extension is not required, it can load .so and compiled binaries just with name</p><p> - traditional way to require feature</p> | require "./my_file"        |
| require_relative | - same as require but "./" is not needed                                                                                                                                                                                                                                                                                                                                                          | require_relative "my_file" |

</details>

- *Where does the Did you mean? message and method suggestions come from*
<details>
<summary>Answer</summary>

From the gem did_you_mean which is included in the language by default 
</details>

- *How require keeps track of the loaded files ?*
<details>
<summary>Answer</summary>

**$"** or **$LOADED_FEATURES**
</details>

### Tools

- *Where to check the default out of the box ruby tools?*
<details>
<summary>Answer</summary>

whatever is present in the *RbConfig::CONFIG["bindir"]*
</details>

- *How many out of the box ruby tools are there ?*
<details>
<summary>Answer</summary>

6
</details>

- *List the out of the box ruby tools?*
<details>
<summary>Answer</summary>

- *ruby* : The interpreter
- *irb* : The interactive Ruby interpreter
- *rdoc and ri* : Ruby documentation tools
- *rake* : Ruby make, a task-management utility
- *gem* : A Ruby library and application package-management utility
- *erb* : A templating system
</details>

#### ruby interpreter command line switches

- *How to check for all the available options?*
<details>
<summary>Answer</summary>

- h
</details>

- *How run a ruby program inline in command prompt ?*
<details>
<summary>Answer</summary>

```
ruby -e "puts 'this is an inline ruby program'"
```
</details>

- *How to check syntax of a ruby program ?*
<details>
<summary>Answer</summary>

```
ruby -c file_name.rb
```
</details>

- *How make ruby program show up warnings *
<details>
<summary>Answer</summary>

```
ruby -w file_name.rb
```
</details>

- *What's the difference between -v and --version *

<details>
<summary>Answer</summary>

- v - shows ruby version information and runs the program in verbose mode (i.e) switches -w flag on
- version - shows the version information
</details>

#### irb

- *How to start irb without line numbers*
<details>
<summary>Answer</summary>

```
irb --simple-prompt
```
</details>

- *How to load a library into irb with command line switches?*
<details>
<summary>Answer</summary>

```
irb -r rbconfig
```
</details>

- *How to turn off echo in irb ?*
<details>
<summary>Answer</summary>

```
irb --no-echo
```
</details>

#### rake

- *Write a task with two namespaces, admin - to clear /tmp directory, and user - to clear tmp directory in home folder with clear descriptions for each task*
<details>
<summary>Answer</summary>


```
namespace :admin do
  desc "clean up the /tmp directory"
  task :clean do
    `rm -rf /tmp/`
  end
end

namespace :user
  desc "clean up the /usr/tmp directory"
  task :clean do
    `rm -rf /usr/tmp/`
  end
end
```
</details>

- *Call the rake task for admin to clear tmp*
<details>
<summary>Answer</summary>

```
rake admin:clean
```
</details>

- *How to list all tasks in current dir*
<details>
<summary>Answer</summary>

```
rake --tasks
```
</details>

#### gem

- *Where does the installed gem go?*
<details>
<summary>Answer</summary>

gems folder present at the same level as site_ruby and vendor_ruby
</details>

- *How to install a gem*
<details>
<summary>Answer</summary>

```
gem install 'gem_name'
```
</details>
