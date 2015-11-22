# Evaluate 1 + 1 and then 1 + "one". Is Io strongly typed or weakly typed?
# Support your answer with code.

(1 + 1) println // => 2
try((1 + "one") println) // errors out => strongly typed

# Is 0 true or false? What about the empty string? Is nil true or false?
# Support your answer with code.

if(0) then("true" println) else("false" println) // => true
if("") then("true" println) else("false" println) // => true
if(nil) then("true" println) else("false" println) // => false

# How can you tell what slots a prototype supports

(Object slotNames) println // blob of slots
(Object slotSummary) println // nicely formatted

# What is the difference between =, :=, and ::=? When would you use each one?

// ::=	Creates slot, creates setter, assigns value
// Use when a slot does not already exist and you want a setter to make it clear
// that a slot is writable by clients
o := Object clone
o someSlot ::= 2
o someSlot println // => 2
o setSomeSlot(3)
o someSlot println // => 3

// :=	Creates slot, assigns value
// Use when a slot does not already exist and you don't want a setter
o := Object clone
o someSlot := 4
o someSlot println // => 4
try(o setSomeSlot(5)) // errors out

// =	Assigns value to slot if it exists, otherwise raises exception
o := Object clone
try(o someSlot = 5) // errors out
o someSlot := 6
o someSlot = 7
o someSlot println // => 7
