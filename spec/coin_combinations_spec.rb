require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combinations') do
  it("it takes an amount of money and return change with least amount of coins") do
    expect(4.coin_combinations()).to(eq("4 pennies"))
  end
end
