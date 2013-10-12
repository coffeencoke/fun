module BettingMoney
  # http://community.topcoder.com/stat?c=problem_statement&pm=2297&rd=4775
  def self.money_made(amounts, cents_per_dollar, result)
    expenses = amounts[result] * cents_per_dollar[result]
    amounts.delete_at result
    income = amounts.any? ? amounts.inject { |sum, a| sum + a }*100 : 0
    income - expenses
  end
end
