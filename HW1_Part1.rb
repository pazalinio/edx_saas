module FunWithStrings

def palindrome?
  s = self.to_s.gsub(/\W/, "").downcase
  s.eql?(s.reverse)
end

def count_words
  counthash = Hash.new(0)
  str = self.to_s.strip.gsub(/[^*\w\s]/, "")
  words = str.downcase.split(" ")
  words.each do |i| counthash[i] +=1 end
  return counthash
end

def anagram_groups
  groups = Array.new
  words = self.to_s.split(" ")
  sorted_words = Hash.new
  words.each do |i|
  end
end
end


# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
