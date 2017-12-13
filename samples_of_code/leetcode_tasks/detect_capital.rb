=begin
Detect Capital by Vladislav Trotsenko.

Given a word, you need to judge whether the usage of capitals in it is right or not. We define the
usage of capitals in a word to be right when one of the following cases holds:

1. All letters in this word are capitals, like "USA".
2. All letters in this word are not capitals, like "leetcode".
3. Only the first letter in this word is capital if it has more than one letter, like "Google".

Otherwise, we define that this word doesn't use capitals in a right way.

Input: "USA"  => Output: True
Input: "FlaG" => Output: False
=end

def detect_capital_use(word)
  word == word.downcase || word == word.upcase || word == word.capitalize ? true : false
end

detect_capital_use('Word')