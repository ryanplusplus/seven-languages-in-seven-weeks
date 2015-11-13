# Write a simple grep that will print the lines of a file having any occurrences
# of a phrase anywhere in that line. You will need to do a simple regular expression
# match and read lines from a file. (This is surprisingly simple in Ruby.) If you
# want, include line numbers.

IO.readlines(ARGV[1]).each_with_index do |line, i|
  puts "#{i + 1}: #{line}" if line =~ /#{ARGV[0]}/
end

# > ruby grep.rb simple grep.rb
# 1: # Write a simple grep that will print the lines of a file having any occurrences
# 2: # of a phrase anywhere in that line. You will need to do a simple regular expression
# 3: # match and read lines from a file. (This is surprisingly simple in Ruby.) If you
