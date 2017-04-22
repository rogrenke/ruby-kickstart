# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	arr = self.split("")
  	arr2 = []
    arr.each_slice(2) {|a,b| arr2 << a}
    arr2.join
  end
end
