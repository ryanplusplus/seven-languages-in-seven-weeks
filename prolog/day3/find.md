### Prolog has some input/output features as well. Find print predicates that print out variables.
`write/1` and `print/1` will print out variables:

```prolog
| ?- X = 3, write(X).
3

X = 3

yes
```

```prolog
| ?- X = 3, print(X).
3

X = 3

yes
```

Other output predicates are documented [here](http://www.gprolog.org/manual/html_node/gprolog038.html#write-term%2F3).

### Find a way to use the print predicates to print only successful solutions. How do they work?
If you place a print predicate at the end it will be used only after all other predicates were successful.
