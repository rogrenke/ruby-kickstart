# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]

def spiral_access(arr, iteration=0, &block)
  height = arr.length - 1
  width = arr[0].length - 1

  #how to exit
  return if height/2 < iteration || width/2 < iteration

  #first_step: top row
  iteration.upto(width - iteration) do |x|
    block.call arr[iteration][x]
  end
  #second step: column at the end
  (iteration+1).upto(height - iteration) do |y|
    block.call arr[y][width - iteration]
  end
  #third step last row reverse
  (width-iteration-1).downto(iteration) do |x|
    block.call arr[height-iteration][x]
  end
  #fourth step - first row up
  (height-iteration-1).downto(iteration+1) do |y|
    block.call arr[y][iteration]
  end

  #recursion
  spiral_access(arr,iteration+1,&block)

end
