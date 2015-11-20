# Print the contents of an array of sixteen numbers, four numbers at a time, using
# just each. Now, do the same with each_slice in Enumerable.

(1..16).each do |i|
  if i % 4 > 0
    print "#{i}, "
  else
    print "#{i}\n"
  end
end

(1..16).each_slice(4) { |slice| p slice }
