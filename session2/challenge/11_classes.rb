# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  def initialize(number)
  	if number > 99
  	  @number = 99
  	elsif number < 0
  	  @number = 0
  	else
      @number = number
    end
  end
  def print_song
  	str = ""
  	while @number > 0
  	  if @number > 2
  	    #contents for 3 and greater
        str = str + "#{numbers_to_string(@number)} bottles of beer on the wall,\n#{numbers_to_string(@number)} bottles of beer,\nTake one down, pass it around,\n#{numbers_to_string(@number-1)} bottles of beer on the wall.\n"
	  elsif @number == 2
  	    #contents for 2 
        str = str + "#{numbers_to_string(@number)} bottles of beer on the wall,\n#{numbers_to_string(@number)} bottles of beer,\nTake one down, pass it around,\n#{numbers_to_string(@number-1)} bottle of beer on the wall.\n"
  	  elsif @number == 1
  	    str = str + "#{numbers_to_string(@number)} bottle of beer on the wall,\n#{numbers_to_string(@number)} bottle of beer,\nTake one down, pass it around,\n#{numbers_to_string(@number-1)} bottles of beer on the wall.\n"
  	  end
  	  @number -= 1	
  	end
  	puts str
  end
  def numbers_to_string(num)
    over_tens = ["ones","tens","Twenty","Thirty","Forty","Fifty","Sixty","Seventy","Eighty","Ninety"]
    tens = ["Ten","Eleven","Twelve","Thirteen","Fourteen","Fifteen","Sixteen","Seventeen","Eighteen","Nineteen"]
    ones = ["Zero","One","Two","Three","Four","Five","Six","Seven","Eight","Nine"]
    str = ""
    if num>19 && num%10!=0
      str = "#{over_tens[num/10]}-#{ones[num%10].downcase}"
    elsif num>19
      str = "#{over_tens[num/10]}"
    elsif num>9
      str = "#{tens[num%10]}"	
    else
      str = "#{ones[num]}"	
    end	
  end
end