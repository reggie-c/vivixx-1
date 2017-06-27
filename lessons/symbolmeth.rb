def pass_me_options(options)
  first_name = options[:first_name]
  last_name = options[:last_name]
  puts "His name is #{first_name} #{last_name}"
end

pass_me_options({first_name: 'Reggie', last_name: 'Cabutotan'})

#Short ccut
pass_me_options first_name: 'Alice', last_name: 'Jones'


puts :test.to_s
puts :i_am_a_symbol.to_s
puts :i_am_a_symbol.to_s.gsub("_", " ")
number1 = :d30.to_s.gsub("d")
