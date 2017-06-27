puts "Type in the filename:"
filename = gets.chomp



opened_file = File.open(filename, 'a+')

puts = "Opened file name #{filename} "
puts "=" *30
print opened_file.read

puts "List of the President of the Philippines:"
$president = gets.chomp
puts = "_"
puts = " "
puts "Enter Start of Office:"
$year = gets.chomp

opened_file.write($president)
opened_file.write($year)
opened_file.write("\n")

opened_file.rewind
puts "=" * 30

print opened_file.read
