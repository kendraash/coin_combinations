require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combinations') do
  it("it takes an amount of money less than five pennies and return change with least amount of coins") do
    expect(4.coin_combinations()).to(eq("4 pennies"))
  end
  it("it takes an amount of money less than ten and return change with least amount of coins") do
    expect(9.coin_combinations()).to(eq("1 nickel and 4 pennies"))
  end
  it ("it takes an amount of money less than 25 and returns the change with the least amount of coins") do
    expect(15.coin_combinations()).to(eq("1 dime and 1 nickel"))
  end
  it ("takes an amount of money less than 50 and returns the change with the least amount of coins") do
    expect(47.coin_)
  end
