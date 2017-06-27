lines = []
File.open("./votes.txt") do |file|
  lines = file.readlines
end

p lines

partitions = lines.partition { |line| line.chomp.include?("Brian Martin") }

p partitions
p partitions[0].count
p partitions[1].count





  puts "Total Votes for #{info[:Name] :"
  number = gets.chomp.to_i
  number2=0


if number == 21
  puts "Please Cast Your Vote:"
else
  puts "Enter Number of Candidate:"
  number1 = gets.chomp.to_i
  Pres_List.each do |info|
end



if number == info[:cand].to_i
   number2=info[:Name].to_i
#        puts "#{info[:cand]} - Name - #{info[:Name]}"

total2 = number1 * number2
puts "Total Number of Votes: #{total2}"

$tvoters += number1 * number2

puts "Calculate Total Votes: #{$tvoters}"
end

$finalvotes = true
end
