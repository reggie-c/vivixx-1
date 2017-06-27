puts "Obeertime Pa!"

puts "Welcome! Please Select Your Order"

$total = 0
number = 3

Select_List = [
  { number: '1', Price: 50 },
  { number: '2', Price: 100},
  { number: '3', Price: 200},
  { number: '4', Price: 400},
  { number: '5', Price: "roceed to Payment or Exit"},
]

while number !=5
  Select_List.each do |info|
    puts "#{info[:number]} - Menu = P#{info[:Price]}"
  end

  puts "Select Menu Number or Press 5 to Exit:"
  number = gets.chomp.to_i
  number2=0
  if number == 5
    puts "Please Proceed Payment or Exit"
  else
    puts "Enter Number of Orders for Selected Menu:"
    number1 = gets.chomp.to_i
    Select_List.each do |info|
      if number == info[:number].to_i
         number2=info[:Price]
#        puts "#{info[:number]} - Menu = P#{info[:Price]}"
      end
    end

    total2 = number1 * number2
    puts "Total Menu Amount: #{total2}"

    $total += number1 * number2

    puts "Calculate Total Amount: #{$total}"
  end
end

def getpayment
    puts "Please Insert Payment"
    money = gets.chomp.to_i
    $change = money - $total
    if $change < 0
      $total = -1 * $change
      puts "Insert #{$total} more"
      getpayment
    elsif $change > 0
      puts "Please get your #{$change} change"

    else

    end
end

getpayment
puts "Thank You. Have a Nice Day!"
