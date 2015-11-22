// Run with `io do.io`

o := Object clone
o m := method("hello, world" println)

o m()
o getSlot("m") call
