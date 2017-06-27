# Create a banking app, to get customer details: name, email, account,address, contact
# Calculate and display balance
# Use attr_accessor to set up the setters & getters



class Bankd
  attr_accessor :name, :email, :account, :address, :contact, :balance

  def initialize (name, email, account, address, contact, balance)
      @name = name
      @email = email
      @account = account.to_i
      @address = address
      @contact = contact.to_i
      @balance = balance.to_i
  end
end

@account1 = Bankd.new("Marc", "marc@gmail.com", 123456, "21-E Venus St, Pluto City, Planet City", 9323212, 200)
@account2 = Bankd.new("Gru", "googoo@gmail.com", 789201, "634 Tower Of Power Bldg, Iligan City", 9432210, 300)




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

def pinp
  require 'io/console'
  puts "Enter your 6-digit pin."
  $pin = STDIN.noecho(&:gets).chomp
end



def showdetails
  puts "Account Name: #{@account1.name}"
  puts "Email Add: #{@account1.email}"
  puts "Account No.: #{@account1.account}"
  puts "Address: #{@account1.address}"
  puts "Contact No.: #{@account1.contact}"
  puts "Balance: #{@account1.balance}"
end

startscreen
showdetails
