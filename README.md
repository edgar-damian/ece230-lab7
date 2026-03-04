# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

## Summary
In this lab we did basic arithmetic circuits like a half subtractor. We also saw the complexity of computers doing arithmetic like subtraction, which is really the addition of a negative number. We used out previous Full Adder to add 2 numbers in 1s compliment. We also turned an 8 bit number into twos complement. 

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
For this week, our half subtractor followed this:
Y = A XOR B
Borrow = ~A AND B

The half adder from last week looks like this; 
Y = A XOR B 
Carry = A AND B

The Ys have the same equation, they differ in the controlling bit. The borrow needs an inverter for the A input, the Carry does not. 

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
What makes this hard is avoiding putting the circuit in a loop when implementing the carry over. We have to make 8 modules, 4 for the regular addition part, and another 4 to add the carry over.

### 3 - What is the edge case and problem with Two’s Complement number representation?
The edge case with two's complement would be trying to represent high negative number. For example, if we had 1000 0000 and we tried to get the twos complement we would cause an overflow. This number would first be 01111 1111, then when you go to add 1, you would get the same number returned back to you. 
