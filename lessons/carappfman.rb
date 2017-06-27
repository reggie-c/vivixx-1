# filemanipulation
puts "Type in the file name: "
filename = gets.chomp


opened_file = File.open(filename, 'a+')

# Ask for additional cars"

puts "Add another Car"
carmake = gets.chomp

#write car make to the file
opened_file.write(carmake)
opened_file.write('\n')
