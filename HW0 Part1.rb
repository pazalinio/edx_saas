=begin ---> HW0 - Part 1 - Problem 1

Define a method sum which takes an array of integers 
as an argument and returns the sum of its elements. 
For an empty array it should return zero.
=end

def sum args
   args.inject(:+) || 0
end

=begin ---> HW0 - Part 1 - Problem 2

Define a method max_2_sum which takes an array of integers 
as an argument and returns the sum of its two largest elements. 
For an empty array it should return zero. For an array with 
just one element, it should return that element.
=end
def max_2_sum args
   args.empty? ? 0 : args.size == 1 ? args[0] : args.sort.last(2).inject(:+)
end

=begin
HW0 - Part 1 - Problem 3

Define a method sum_to_n? which takes an array of integers 
and an additional integer, n, as arguments and returns true 
if any two distinct elements in the array of integers sum to n. 
An empty array or single element array should both return false. 
=end

def sum_to_n? args, n
   return false if (args.empty? || args.size  == 1)
   #Couldn't use the ! operator to modify the the original array for some reason
   arr = args.sort.uniq
   while arr.length > 1
      x = arr.shift
      return true if arr.map{|i| i + x}.detect{|i| i==n}
   end
   return false
end
