system 'cls'

@flagdown = 35

def fare(b)
  return @flagdown += ((b * 1000) / 400) * 2
end

puts "The Distance from CalleUno to SM in km:"
b = gets.chomp.to_f
puts "The fare from CalleUno to SM Baguio is #{fare(b)}."
