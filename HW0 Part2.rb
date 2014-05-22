=begin
HW0 - Part 2 - Problem 1
Define a method hello(name) that takes a string representing a 
name and returns the string "Hello, " concatenated with the name.
=end

def hello name
	"Hello, #{name}" 
end

=begin
HW0 - Part 2 - Problem 2
Define a method starts_with_consonant?(s) that takes a string and 
returns true if it starts with a consonant and false otherwise. 
(For our purposes, a consonant is any letter other than A, E, I, O, U.) 
NOTE: be sure it works for both upper and lower case and for nonletters!
=end

def starts_with_consonant? str
	return (str =~ /\A(?=[^aeiou])(?=[a-z])/i) == 0 ? true : false
end

=begin
HW0 - Part 2 - Problem 3
Define a method binary_multiple_of_4?(s) that takes a string and 
returns true if the string represents a binary number that is a multiple of 4.
NOTE: be sure it returns false if the string is not a valid binary number!
=end

def binary_multiple_of_4? str
	return (str =~ /\b[01]+\b/) != 0 ? false : str.to_i(2) % 4 == 0 ? true : false
end
