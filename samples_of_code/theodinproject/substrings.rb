=begin
Project 3 - Substrings by Vladislav Trotsenko.

Implement a method #substrings that takes a word as the first argument and
then an array of valid substrings (your dictionary) as the second argument.

It should return a hash listing each substring (case insensitive) that was
found in the original string and how many times it was found.

Make sure your method can handle multiple words.

> substrings("Howdy partner, sit down! How's it going?", dictionary)
=> { "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1,
"it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 }
=end

def substrings(string, dictionary)
  result = Hash.new(0)
    dictionary.each { |item| string.scan(/#{item}/i) { result[item]+=1 } }
  result
end

p substrings("Howdy partner, sit down! How's it going?", ['below','down','go','going','horn','how','howdy','it','i','low','own','part','partner','sit'])
