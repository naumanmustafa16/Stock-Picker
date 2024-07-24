def stock_picker(array)

=begin
we need to find arrays of all combinations
Then we will check the array of difference
The combination with highest difference is our buying and selling price
=end

  array_of_combinations = array.combination(2).to_a
  array_of_difference = array_of_combinations.reduce([]) do
    |result,value|
    result.push(
      value[1]-value[0]
    )
    result
  end
  # Calculate Buying and selling days
buying_day = array.index(array_of_combinations[array_of_difference.index(array_of_difference.max)][0])
selling_day = (array.drop(buying_day).index(array_of_combinations[array_of_difference.index(array_of_difference.max)][1]) + buying_day)
print 
puts "Buy on day: #{buying_day} \nSell on day: #{selling_day}"
   
end

stock_picker([600,4,6,9,2,8,61,10,1])
