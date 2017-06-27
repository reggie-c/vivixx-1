#Cars
def order
##display cars av
##checkout
  puts "1. Car 1"
  puts "2. Car 2"
  puts "0. Go Back"
  command = get.chomp
  case command
    when "1"
    #display car1 and checkout
    when "2"
    #display car1 and checkout
    else
    break
    end
  end
end
##save to db
#tracker
##find from db


puts "1. Order"
puts "2. Track"
puts "0. Exit"
command = get.chomp
case command
  when "1"
  #ORDER
  when "2"
  #Track
  else
  break
  end
end

order
