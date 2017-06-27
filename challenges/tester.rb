# LOAN CALCULATOR



class Loan

  def initialize(loan_amount, interest_rate, loan_term)

    @loan_amount = loan_amount

    @interest_rate = interest_rate

    @loan_term = loan_term
  end


  def loan_amount

    @loan_amount

  end


  def interest_rate

    @interest_rate

  end

  
  def loan_term

    @loan_term

  end

end








def banner

  puts %q{

 /$$        /$$$$$$   /$$$$$$  /$$   /$$

| $$       /$$__  $$ /$$__  $$| $$$ | $$

| $$      | $$  \ $$| $$  \ $$| $$$$| $$

| $$      | $$  | $$| $$$$$$$$| $$ $$ $$

| $$      | $$  | $$| $$__  $$| $$  $$$$

| $$      | $$  | $$| $$  | $$| $$\  $$$

| $$$$$$$$|  $$$$$$/| $$  | $$| $$ \  $$

|________/ \______/ |__/  |__/|__/  \__/







/$$$$$$   /$$$$$$  /$$        /$$$$$$  /$$   /$$ /$$        /$$$$$$  /$$$$$$$$ /$$$$$$  /$$$$$$$

/$$__  $$ /$$__  $$| $$       /$$__  $$| $$  | $$| $$       /$$__  $$|__  $$__//$$__  $$| $$__  $$

| $$  \__/| $$  \ $$| $$      | $$  \__/| $$  | $$| $$      | $$  \ $$   | $$  | $$  \ $$| $$  \ $$

| $$      | $$$$$$$$| $$      | $$      | $$  | $$| $$      | $$$$$$$$   | $$  | $$  | $$| $$$$$$$/

| $$      | $$__  $$| $$      | $$      | $$  | $$| $$      | $$__  $$   | $$  | $$  | $$| $$__  $$

| $$    $$| $$  | $$| $$      | $$    $$| $$  | $$| $$      | $$  | $$   | $$  | $$  | $$| $$  \ $$

|  $$$$$$/| $$  | $$| $$$$$$$$|  $$$$$$/|  $$$$$$/| $$$$$$$$| $$  | $$   | $$  |  $$$$$$/| $$  | $$

\______/ |__/  |__/|________/ \______/  \______/ |________/|__/  |__/   |__/   \______/ |__/  |__/













}

end

banner

puts "Enter your name:"

$name = gets.chomp.to_s

puts "Hi #{$name}, this is an online repayment calculator"



puts "Enter loan amount:"

@amount = gets.chomp.to_i



puts "Enter interest_rate:"

@rate = gets.chomp.to_i



puts "Enter loan term in months:"

@term = gets.chomp.to_i



def mpa

  # monthly_payment_amount

   return (@amount / @term) + (@rate/12) * @amount

end



puts "Your monthly payment amount is: #{mpa}"

@amount = gets.chomp.to_i







mpa
