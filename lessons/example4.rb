def callout (shout)
  puts "Hoy Ang Pogi Mo #{shout}"
end
callout("Marcus")

puts 'hi Marcus!'

def TimesThree(number)
  puts "#{number} x 3 = #{number*3}"
end

TimesThree(100)
TimesThree(400)
TimesThree(500)


def joketime (laugh)
  puts "I burst my bubble #{laugh}"
end

joketime("hahaha!")


temperature = 25 #this is the gauge
if temperature > 25 #comparative level
  puts "it is hot"
else
  puts "its cold"
end


counter = 0

while counter < 10 do
  puts counter
  counter += 1
end


10.times do |counter|
  puts counter
end

for year in 2000..2020
  puts year
end


for year in 2000..2020
  puts year if year % 2 == 0
end


11.times do |counter|
  puts counter
end


counter = 0

while counter != 10 do
  puts counter
  counter += 1
end


puts "Hi, What's your name?"
name = gets.chomp
puts "Hello #{name}"


puts "Enter a number:"
number = gets.chomp
puts "#{number.to_i} plus itself equals #{number.to_i+number.to_i}"
