=begin
HW0 - Part 3
Define a class BookInStock which represents a book with an isbn number, isbn, and price of the book as a floating-point number, price, as attributes. The constructor should accept the ISBN number (a string) as the first argument and price as second argument, and should raise ArgumentError (one of Ruby's built-in exception types) if the ISBN number is the empty string or if the price is less than or equal to zero.

Include the proper getters and setters for these attributes. Include a method price_as_string that returns the price of the book with a leading dollar sign and trailing zeros, that is, a price of 20 should display as "$20.00" and a price of 33.8 should display as "$33.80".
=end

class BookInStock

  def initialize(isbn, price)
	isbn.empty? ? raise ArgumentError : @isbn = isbn
	price <= 0 ?  raise ArgumentError : @price = price.gsub(/[^0-9.]/,'') to_f
  end

  attr_reader :isbn 	# I don't think we should be able to edit the ISBN
  attr_accessor :price	# The price should be read/write
  
  def price_as_string(isbn)
	#returns the price of the book with a leading dollar sign and trailing zeros, that is, a price of 20 should display as "$20.00" and a price of 33.8 should display as "$33.80"
	puts if (@isbn != isbn) ? "Incorrect ISBN" : 
	
  end
  
end

my_account = Account.new("Eric", 1_000_000)
my_account.withdraw(11, 500_000)
my_account.display_balance(1234)
my_account.withdraw(1234, 500_000)
my_account.display_balance(1234)

end
