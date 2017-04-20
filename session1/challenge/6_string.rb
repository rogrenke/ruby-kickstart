# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# 
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# 
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  result_arr = []
  if return_odds
  	for i in 0..(string.length-1) do
  	  if i.odd?
        result_arr << string[i]
  	  end
  	end
  	return result_arr.join
  else
  	for i in 0..string.length-1
  	  if i.even?
        result_arr << string[i]
  	  end
  	end
  	return result_arr.join
  end
end
