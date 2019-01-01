# Behavioral-Design-Pattern

Behavioral Design Pattern deals with how objects interact. It describes how objects communicates with each other and how the steps of a task is broken among different objects so as to provide more flexibility and make the code more testable. 

## Contents

If you are looking for something specific, you can jump right into the relevant section from here.

1. [Chain Of Responsibility Design Pattern](#chain-of-responsibility-design-pattern)
2. [Command Design Pattern](#command-design-pattern)
3. [Iterator Design Pattern](#aiterator-design-pattern)
4. [Mediator Design Pattern](#mediator-design-pattern)
5. [Memento Design Pattern](#memento-design-pattern)
6. [Observer Design Pattern](#observer-design-pattern)
7. [State Design Pattern](#state-design-pattern)
8. [Strategy Design Pattern](#strategy-design-pattern)
9. [Template Design Pattern](#template-design-pattern)
10. [Visitor Design Pattern](#visitor-design-pattern)

## Chain Of Responsibility Design Pattern
Chain of Responsibility is a behavioural design pattern that let us pass the requests among a chain of handlers where each handler decides either to process the request or to pass it along the chain.

## Command Design Pattern
In Command pattern, the class that executes the command(called Invoker) is decoupled from the class which produces the command(ConcreteCommand) and from the class that knows how to perform it.(Receiver)

## Iterator Design Pattern
This pattern is used for iterating over a collection of elements. It does not expose the data structure used in implementing it (array, dictionary or linked list) rather it gives an interface which iterates over the collection of elements without exposing its underlying representation.

## Mediator Design Pattern
Let us take a scenario when two or more classes has to interact with each other. Instead of directly communicating with each other and getting the knowledge of their implementation, they can talk via a Mediator.

## Memento Design Pattern
Memento Pattern captures the current state of an object and store it in such a way that you can retrieve it at a later time when you would like to return to the previous state.

## Observer Design Pattern
In this pattern, one object notifies other objects about its state change i.e. when the state of one object changes, other object which are subscribed to it gets notified about the state change. So, it is a one-to-many relationship. 
The object whose state changes are called observable or subject and the objects which subscribe for changes on the observable are called observers.

## State Design Pattern
State design pattern is a design pattern where an object needs to change his behavior when its internal state has changed. It appears as if the object changed its class. 

## Strategy Design Pattern
This pattern defines a family of algorithms: each one of them written in a separate class allowing us to select which algorithm to execute at runtime. 

## Template Design Pattern
In this pattern, the base class defines the template of an algorithm and let the subclass implement these abstract methods in the same way they are defined in the base class without changing the overall structure.

## Visitor Design Pattern
Visitor design pattern separates the algorithms from the objects on which they operate i.e. the operational logic is moved from each elements of a group into a new class. The new class will perform the operational logic using the data from those elements.

For more, check the [Medium Blog](https://medium.com/@lubabahasnain93/design-patterns-in-swift-part-ii-behavioral-design-pattern-5e4e5f13ccf7)
