$Trans_List = [
  { num: '1', tname: 'Balance Inquiry'},
  { num: '2', tname: 'Withdrawal'},
  { num: '3', tname: 'Transfer'},
  { num: '4', tname: 'Payment'}
]



def startcreen
  puts '='*80
  puts " "
  puts "START SCREEN".center(80, " ")
  puts " "
  puts '='*80
end

def enterpin
  puts "INSERT CARD AND ENTER YOUR "
  $name=gets.chomp.strip
  selecttrans($name)
  puts "Enter to continue"
  $y = gets.chomp
end

def selecttrans
    puts "-"*30
    puts "SELECT YOUR TRANSACTION"
    puts '-'*30
      $Trans_List.each_with_index do |info, x|
      puts "#{x+1}. #{$Trans_List[x][:tname]}"
    end
    puts "-"*30
  end

startcreen
enterpin
selectmenu
