class InvalidNumError < StandardError
end

def validate_num(number)
  number = number.to_i # Trim whitespace
  raise InvalidNumError, "Number '#{number}' must not be empty." if number.empty?
    number
end

begin
  validate_num(1) #Fine
  validate_num( ) #Error!
rescue InvalidNumError => e
  puts e.message # => Number" " must be an integer
end


#recovering from errors

def ask_for_number
  # 1. Ask for user input
  puts 'Please Enter Number:'
  print '> '
  number = gets.chomp.to_i
  #2. Validate and return name
  validate_num(number)
rescue InvalidNumberError => e
  # 3. validate_num() raised error!
  puts 'Invalid number. Please try again.'
  retry # Go back to 1.
end


usenumber = ask_for_number
