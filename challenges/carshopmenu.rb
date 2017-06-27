
def carmenu
  puts "\n=== List of Cars ==="
  puts "1. BMW"
  puts "2. Ferrari"
  puts "3. Ford"
  puts "4. Hyundai"
  puts "5. KIA"
  puts "6. Mazda"
  puts "7. Mitsubishi"
  puts "8. Nissan"
  puts "9. Toyota"
  puts "10. Volkswagen"
  puts "11. Exit Menu"
end

def fmenu
  puts "\n=== List of Accessories ==="
  puts "1. Color"
  puts "2. Wheels"
  puts "3. Mugs"
  puts "4. Alarm and Security"
  puts "5. Rear View Mirror"
end


color = gets.chomp
price_color = 100 if color == "Green_Day"
price_color = 200 if color == "Gray_Houd"
price_color = 300 if color == "Punk_Pink"
price_color = 400 if color == "Ocean_Blue"
price_color = 500 if color == "Sky_Blue"

def select_color
  puts "1. Green_Day"
  puts "2. Gray_Hound"
  puts "3. Punk_Pink"
  puts "4. Ocean_Blue"
  puts "5. Sky_Blue"
end


wheel = gets.chomp
p_w = 45 if wheel == "a_Wheel1"
p_w = 50 if wheel == "b_Wheel2"
p_w = 55 if wheel == "c_Wheel3"
p_w = 60 if wheel == "d_Wheel4"
p_w = 65 if wheel == "e_Wheel5"

def select_wheel
   puts "1. a_Wheel1"
   puts "2. b_Wheel2"
   puts "3. c_Wheel3"
   puts "4. d_Wheel4"
   puts "5. e_Wheel5"
end

mug = gets.chomp
mugw = 20 if mug == "rmugs"
mugw = 30 if mug == "imugs"
mugw = 40 if mug == "zmugs"
mugw = 50 if mug == "amugs"
mugw = 60 if mug == "lmugs"

def select_mugs
   puts "1. rmugs"
   puts "2. imugs"
   puts "3. zmugs"
   puts "4. amugs"
   puts "5. lmugs"
end

as = gets.chomp
asp = 500 if as == "as1"
asp = 600 if as == "as2"
asp = 700 if as == "as3"
asp = 800 if as == "as4"
asp = 900 if as == "as5"

def select_as #for alarm and security
    puts "1. as1"
    puts "2. as2"
    puts "3. as3"
    puts "4. as4"
    puts "5. as5"
end


rv = gets.chomp
rvp = 140 if rv == "rv11"
rvp = 150 if rv == "rv12"
rvp = 160 if rv == "rv13"
rvp = 170 if rv == "rv14"
rvp = 180 if rv == "rv15"

def select_rv  #(for rearview mirror)
   puts "1. rv11"
   puts "2. rv12"
   puts "3. rv13"
   puts "4. rv14"
   puts "5. rv15"
end


loop do
  carmenu
  carsel = gets.chomp

  case carsel
    when '1'
      puts "You have selected BMW"
      puts " "
      fmenu
      puts " "
      puts "Please Select Features You Want to Add:"
      feature1 = gets.chomp.to_i
        if feature1 == 1
          feature1 = select_color
          puts "Please Select Color Choice:"
          cchoice = gets.chomp
            if cchoice == '1'
              puts "You have selected Green_Day"
              puts " "
              puts "Any Additional Features You Want? [Y/N]"
              addmore = gets.chomp
              while addmore == 'y' do
              fmenu
              puts "Please Select Features You Want to Add:"
              feature1 = gets.chomp
            end
            elsif cchoice == '2'
              puts "You have selected Gray_Hound"
              puts " "
              puts "Any Additional Features You Want? [Y/N]"
              addmore = gets.chomp
              while addmore == 'y' do
              fmenu
              puts "Please Select Features You Want to Add:"
              feature1 = gets.chomp
            end
            elsif cchoice == '3'
              puts "You have selected Punk_Pink"
              puts " "
              puts "Any Additional Features You Want? [Y/N]"
              addmore = gets.chomp
              while addmore == 'y' do
              fmenu
              puts "Please Select Features You Want to Add:"
              feature1 = gets.chomp
            end
            elsif cchoice == '4'
              puts "You have selected Ocean_Blue"
              puts " "
              puts "Any Additional Features You Want? [Y/N]"
              addmore = gets.chomp
              while addmore == 'y' do
              fmenu
              puts "Please Select Features You Want to Add:"
              feature1 = gets.chomp
            end
            elsif cchoice == '5'
              puts "You have selected Sky_Blue"
              puts " "
              puts "Any Additional Features You Want? [Y/N]"
              addmore = gets.chomp
              while addmore == 'y' do
              fmenu
              puts "Please Select Features You Want to Add:"
              feature1 = gets.chomp
              end
            else
              addmore == 'n'
            end


        elsif feature1 == 2
              feature1 = select_wheel
              puts "Please Select Type of Wheel"
        elsif feature1 == 3
              feature1 = select_mugs
              puts "Please Select Type of Mugs"
        elsif feature1 == 4
              feature1 = select_as
              puts "Please Select Alarm & Security"
        elsif feature1 == 5
              feature1 = select_rv
              puts "Please Select Rear View Mirror"
        end

        else
           "Please exit "
         end
            break
   end

#Dan has started his own car shop, the customers are
#demanding for an easier way to order and dress up their cars.
#You are to build a menu system that calculates the price of a
#car, given different options like paint color, wheels, etc..
# list cars first
#1. Order tracker without a need to login to the system
#2. Google "Konami Code" and implement your own cheat code in
# your system
#3.Add a tribute snippet to your code in celebration of our national hero's birthday
