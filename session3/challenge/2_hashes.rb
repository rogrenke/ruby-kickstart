# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}
def even_arr(odd_num)
  arr = []
  idx = 0
  while idx < odd_num
    if idx > 0 && idx.even?
      arr << idx
    end
    idx += 1
  end
  arr
end

def staircase(num)
  hash1 = {}
  idx = 0
  while idx <= num
    if idx.odd?
      hash1[idx] = even_arr(idx)
    end
    idx += 1
  end
  hash1
end
