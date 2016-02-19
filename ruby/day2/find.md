### Find out how to access files with and without code blocks. What is the benefit of the code block?
You can read an entire file into memory with:

```ruby
f = File.read('/path/to/file')
```

or:

```ruby
f = File.readlines('/path/to/file')
```

You can stream a file with:

```ruby
IO.foreach("/path/to/file") { |line| puts line }
```

The advantage of streaming a file (and processing each line in a block) is that the entire file does not need to be in memory at the same time (which may be infeasible due to time or space considerations).

### How would you translate a hash to an array? Can you translate arrays to hashes?
You can use `to_a` to translate a hash (or most anything else) into an array:

```ruby
{ :a => 1, :b => 2 }.to_a
# => [[:a, 1], [:b, 2]]
```

You can use the splat operator and the `[]` method on the `Hash` class to turn an array into a hash:

```ruby
Hash[*[:a, 1, :b, 2]]
# => {:a=>1, :b=>2}
```

### Can you iterate through a hash?
Certainly:

```ruby
{:a => 1, :b => 2}.each { |k, v| puts "#{k} => #{v}" }
# a => 1
# b => 2
```

### You can use Ruby arrays as stacks. What other common data structures to arrays support?
- Queue
- Double-Ended Queue
- Set (sorta... with `unique` and/or `include?`)
- Ring Buffer
- etc.
