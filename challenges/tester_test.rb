#Test_driven development
#Loan_
# @loan_amount = loan_amount
# @interest_rate = interest_rate
# @loan_term = loan_term


require 'test/unit'
require_relative 'tester' # 'tester' is the filename subjected for testing

  class TesterTest < Test::Unit::TestCase

    def test_loan_amount
      tester = Loan.new(2000, 4, 3) # Loan is the class for testing
      assert_equal(2000, tester.loan_amount)
    end

    def test_interest_rate
      tester = Loan.new(2000, 4, 3)
      assert_equal(4, tester.interest_rate)
    end

    def test_loan_term
      tester = Loan.new(2000, 4, 3)
      assert_equal(3, tester.loan_term)
    end

  end
