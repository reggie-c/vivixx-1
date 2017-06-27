system "cls"

def toF(c)
  return (c*(9/5)) + 32
end

puts "Enter Temperature in degrees Celcius:"
c = gets.chomp.to_f
puts "The current temperature is #{toF(c)} in Farenheit."
