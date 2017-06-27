$fund = 300000


$Trans_List = [
  { num: '1', tname: 'Balance Inquiry'},
  { num: '2', tname: 'Withdrawal'},
  { num: '3', tname: 'Transfer'},
]


def startscreen
  puts '='*80
  puts " "
  puts "Welcome BPI".center(80, " ")
  puts " "
  puts '='*80
  puts "Please Insert ATM Card... [i]"
  $ins = gets.chomp.strip.downcase
  pinp
  puts "-"*30
end

def selecttrans
    puts "-"*30
    puts "SELECT YOUR TRANSACTION"
    puts '-'*30
      $Trans_List.each_with_index do |info, x|
      puts "#{x+1}. #{$Trans_List[x][:tname]}"
    end
end

def transn
  puts "Enter Number of Your Transaction:"
  $choice=gets.chomp.to_i

end

def pinp
  require 'io/console'
  puts "Enter your 6-digit pin."
  $pin = STDIN.noecho(&:gets).chomp
end


def tbal
    puts "You have P#{$fund} remaining balance."
end

def twith
  puts "Enter the amount: "
  $cash = gets.chomp.to_f
    if $cash <= $fund
      puts "Please get your P#{$cash}. Thank You!"
      $fund = $fund - $cash
    else
      puts "Not Enough Balance. Please try again."
    end
end


def ttransf
  puts "Enter Company Name: "
  $comp = gets.chomp.upcase
  puts "Amount: "
  $amt = gets.chomp.to_f
    if $amt <= $fund
      puts "Success! P#{$amt} had been transferred to #{$comp}"
      $fund = $fund - $amt
    else
      puts "Not Enough Balance. Please try again."
    end
end

startscreen
selecttrans
transn

while $ins == "i"
    case $choice

    when 1
      tbal
      puts "Would you like to have another transaction? [y/n]"
      sss = gets.chomp.downcase
      if sss=='y'
        system 'cls'
        selecttrans
        transn
      else
      puts "Thank you! Have a nice day!"
        break
      end

    when 2
      twith
      puts "Would you like to have another transaction? [y/n]"
      sss = gets.chomp.downcase
      if sss=='y'
        system 'cls'
        selecttrans
        transn
      else
        puts "Thank you! Have a nice day!"
        break
      end

    when 3
      ttransf
      puts "Would you like to have another transaction? [y/n]"
      sss = gets.chomp.downcase
      if sss=='y'
        system 'cls'
        selecttrans
        transn
      else
        puts "Thank you! Have a nice day!"
        break
      end
    end
end
