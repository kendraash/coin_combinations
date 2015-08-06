require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combinations') do
  it("it takes an amount of money less than five pennies and return change with least amount of coins") do
    expect(4.coin_combinations()).to(eq("4 pennies"))
  end
  it("it takes an amount of money less than ten and return change with least amount of coins") do
    expect(9.coin_combinations()).to(eq("1 nickel and 4 pennies"))
  end

end
