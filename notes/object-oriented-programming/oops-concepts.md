# Object Oriented Programming

This term was coined by Alan Kay. It is a style of programming that focuses on using objects to design and build application.

# What is an Object

- Object is the basic building block of OOP.
- They represent real world entities

Eg : Shopping Cart, Product Item etc.

# What is a Class

- Class is the blue print of an object.
- It defines the behavior(methods) and states(attributes) of an Object

# Principles of OOP

The four guiding principles of OOP are

1. Encapsulation
2. Abstraction
3. Inheritance
4. Polymorphism

## Encapsulation

It is simply binding and hiding data(attributes) to the outside world. When an Object keeps its data private, it restricts access to other objects which they use it. Instead the data can be accessed only through methods exposed.

> Encapsulation is hiding the state (data / attributes) of an Object to the outside by making it accessible only through methods

## Abstraction

It can thought of an extension of Encapsulation. Abstraction is hiding all irrelevant details to the outside world and only exposing the relevant details.

Internal methods and attributes to the object that are kept private to hide implementation complexities.

Eg: Imagine a stack implemented using dynamic array for storing instead of linked list. The user need not know what's used internally.

## Inheritance

Creating new classes from existing ones there by getting the behavior of existing class.

## Polymorphism

Polymorphism is the ability of the object to behave differently for same message based on the context.

For Eg: Chess Piece -> can take many forms like bishop, castle, knight etc. and behave differently to the move message

# OO Analysis and Design

It is a structured method for analyzing and designing a system by applying object-oriented concepts. The process can be defined as

1. Identifying the objects in a system
2. Defining relationship between objects
3. Establishing the interface of each object
4. Making a desing, which can be converted to executables using OO language.

**UML** is often used as a standard tool to document OO Analysis and design.

# References

- [Alan Kay on OOP - Mail Chain](http://userpage.fu-berlin.de/~ram/pub/pub_jf47ht81Ht/doc_kay_oop_en)
- [Composing Software by Eric Elliot](https://medium.com/javascript-scene/composing-software-the-book-f31c77fc3ddc)

## Books

- Practical Object Oriented Design in Ruby
- Growing Object Oriented Software Guided By Tests
- Domain-Driven Design: Tackling Complexity in the Heart of Software
- Growing Object-Oriented Software, Guided by Tests
- The Object-Oriented Thought Process by Matt Weisfeld
- Head First Object-Oriented Analysis and Design
- Clean Code
- SCIP
- Patterns of Enterprise Application Architecture by Martin Fowler
- Refactoring by Martin Fowler
- The Clean Coder: A Code of Conduct for Professional Programmers
- "Object-oriented software construction" by Bertrand Meyer
- "Object-Oriented Analysis and Design with Applications" by Grady Booch et al

## Courses

https://www.lynda.com/Python-tutorials/Programming-Foundations-Object-Oriented-Design/731735-2.html


Problem 1: Design a Vending Machine in Java (solution)
You need to design a Vending Machine which follows the following requirements
Accepts coins of 1,5,10,25, 50 Cents, i.e. penny, nickel, dime, and quarter as well as 1 and 2 dollar note
Allow user to select products e.g. CANDY(10), SNACK(50), NUTS(90), Coke(25), Pepsi(35), Soda(45)
Allow users to take a refund by canceling the request.
Return the selected product and remaining change if any
Allow reset operation for vending machine supplier

Problem 3: Design a Lift system in your programming language. (solution)
An elevator is a combination of at least two elevators, one going up and another coming down. The goal is to minimize the waiting time of the user. Make sure you how your design will evolve if a lift is installed on high rise buildings over 20 floors.

How many lifts you need to server 40 floors with waiting time no less than 30 seconds on average. Think about the parking strategy of your lift, i.e. which floor they should be resting or should they keep going up or down, etc.


Problem 4: Desing and implement LRU cache in Java or C++?
An LRU cache stands for Least Recently Used. It should remove the least recently used item from the cache to make space for a new item. Think about the persistence strategy of the cache. how do you build-cache after crash etc


Problem 5: Design a Traffic Controller System for a Junction?
You need to design software to control traffic lights at a junction where traffic is coming from four sides. It should follow basic traffic rules, allow a pedestrian to cross the road, and traffic to pass in a reasonable time. How do you optimize the waiting time with respect to high traffic from one direction, like during morning and evening rush hours?
