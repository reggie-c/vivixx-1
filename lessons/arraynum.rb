arrayOfNumbers = [1,2,3,4,5,6,7,8,9,10]
addTwo = arrayOfNumbers[0]+arrayOfNumbers[8]
getMin = arrayOfNumbers.min
reverse = arrayOfNumbers.reverse
puts reverse
puts addTwo
puts getMin
puts arrayOfNumbers.sample

arrayOfME = ['To CODE', 'Not To CODE']
puts "To code or not to code?"
gets.chomp
puts arrayOfME.sample

LunchFood = ['Menu1', 'Menu2', 'Menu3', 'Menu4']
puts "I ike to eat..., Enter #"
puts "Menu1 - 0, Menu2 - 1, Menu3 - 2, Menu4 - 3"
ordernum = gets.chomp.to_i
puts "So I want to eat #{LunchFood[ordernum]}"
