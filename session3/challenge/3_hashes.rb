# Write a method that takes a string and returns an array
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}
def word_count(str)
  word_arr = str.downcase.split(" ")
  hash1 = {}
  idx = 0
  while idx < word_arr.length
    n = 0
    counter = 0
    while n < word_arr.length
      if word_arr[idx] == word_arr[n]
        counter += 1
      end
      n += 1
    end
    hash1[word_arr[idx]] = counter
    idx += 1
  end
  hash1
end
