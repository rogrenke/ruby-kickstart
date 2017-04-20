# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  result_arr = []
  idx = 0
  while idx < string.length
    if string[idx].downcase == "r" && idx != string.length-1
      result_arr << string[idx+1]
    end
    idx += 1
  end	
  result_arr.join
end