# Introduction
A dynamic simulation can only increase the
confidence regarding the design correctness and it can never be 100% complete. However,
formal verification has the ability to comprehensively prove correctness of a design
against a specification. The complexity though is in the size of the design and hence
appropriate areas/features are normally selected for formal verification

# What is Formal Verification?
Formal Verification is a process where we use mathematical modelling to verify a Design
implementation meets a specification. It uses mathematical reasoning and algorithms to
prove that a design meets a specification. In formal verification, all cases (inputs and state)
are covered implicitly by the tool without the need for developing any stimulus generators
or expected outputs. A formal description of the specification in terms of properties or
higher level model is required by the tool for exhaustively covering all input combinations
to prove or disprove functional correctness. SystemVerilog properties can be used to
formally describe a design specification.
Formal Verification is a **Static Verification** process as there are no dynamic simulation
cycles that are run
#  Methods for performing Formal Verification
There are two commonly used formal verification methods:
1) Model Checking
2) Formal Equivalence

## Model Checking
In Model Checking method, a model to be verified is described as set of properties that are
derived from the design specification. Here, state space of the design is searched
exhaustively to see if all the properties hold under all the states. It throws an error if a
property is violated for any state. The diagram below describes this:
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/5de317b3-c1de-4eb1-a9c4-27973867964f)

## Formal Equivalence
Formal Equivalence is used to verify if two models at same or different abstraction are
functionally the same or not. This method doesn’t tell if a model is functionally correct,
but it tells if two models are functionally the same or not (functionally equivalent). This is
most commonly used in comparing functionality of the RTL design and the synthesized
netlist. It can also be used to check against two RTL models or two Gate level models.
The diagram below represents this:
![image](https://github.com/Diya-Veerbhan/Verification_Concepts/assets/64258231/f16f7f9f-fafa-4223-9017-8b3f55772b06)

# Applications of formal verification
Formal Equivalence can be used to verify if following models are equivalent:
1) RTL Design & Synthesized Netlist (Gate level model)
2) RTL Design & Reference Model
3) Two RTL designs
4) Two Gate level models
5) Two reference models

# Advantages 
Following are some of the advantages of Formal Verification over Dynamic simulations:
1) Exhaustive verification is not possible with dynamic simulations as the input
stimulus is implemented using a generator or tests. However, Formal verification
covers exhaustive state space as the stimulus is generated automatically by the tool
to try and prove/disprove all specifications.
2) There is no need to generate input stimulus, since exhaustive stimulus is
generated automatically by tool. The effort from the user will be to implement a
formal specification using properties.
3) There is no need to generate expected output sequences and the correctness of
design is guaranteed mathematically.

# Limitations
Following are some of the limitations of Formal Verification:
1) Scalability is one of the biggest limitations of Formal Verification. Formal
Verification is limited to smaller designs because even addition of one flip-flop
increases design state space by a factor of 2 (which means input scenarios are
doubled for every flip-flop).
2) It ensures correctness of design with respect to design specification. It doesn’t
guarantee if the design works properly (say if Specification itself is buggy).
3) For model checking, design specification needs to be translated and coded in
terms of properties.



