puts "Will I Am Food Pa More"

puts "Welcome! Please Select Your Order"

$total = 0
number = 3

while number !=5
  puts "1 - Menu = P50"
  puts "2 - Menu = P100"
  puts "3 - Menu = P200"
  puts "4 - Menu = P400"
  puts "5 - Labas Na Ko!"


  puts "Select Menu Number:"
  number = gets.chomp.to_i
  if number == 5
    puts "Please Proceed Payment or Exit"
  else
    puts "Enter Number of Orders for Selected Menu:"
    number1 = gets.chomp.to_i

    if number == 1
      number2 = 50
    end

    if number == 2
      number2 = 100
    end


    if number == 3
      number2 = 200
    end

    if number == 4
      number2 = 400
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
puts "Thank You. Please Get Your Order"
