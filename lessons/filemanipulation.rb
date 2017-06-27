#Working with Files in Ruby
#Reading, writing, and appending to files


#read a file
#powershell irb File.methods.sort
# The class File is built into Ruby

# Open, Close, Read, Write

# Ask for the filename
puts "Type in the file name: "
filename = gets.chomp

# Open file and save it to opened_file variable

opened_file = File.open(filename, 'a+')

# Print to the terminal screen
puts "Opened file name #{filename}"
puts "=" *15
print opened_file.read


#Ask for a new city name
puts "Add another Philippine City: "
city = gets.chomp

# Write city name to the file
opened_file.write(city)
opened_file.write("\n")

# Rewind pointer at beginning of file
opened_file.rewind
puts "=" *15

# Read entire file from beginning to end
print opened_file.read

# We are done with the file
opened_file.close

# Lesson File opening modes


puts "Give your file a name (without .txt extension!)"
filename = gets.chomp

#creates the new file and adds the .txt file type extension
openened_file - File.name(filename + '.txt', 'w+')

puts 'write in a sentence to save to your file
'#{filename}''
sentence = gets
# Write senetence string to the fileopened_file.write(senetence)
