class Fixnum
  define_method(:coin_combinations) do
    change = self
    final_change = []

    if change < 99 && change >= 25
      change_quarter = change./(25)
      change = change.-(change_quarter.*(25))
      quarter = change_quarter.to_s().concat(" quarter")
      final_change.push(quarter)
    end

    if change < 25 && change >= 10
      change_dimes = change./(10)
      change = change.-(change_dimes.*(10))
      dimes = change_dimes.to_s().concat(" dime")
      final_change.push(dimes)
    end

    if change < 10 && change >= 5
      change_nickels = change./(5)
      change = change.-(change_nickels.*(5))
      nickels = change_nickels.to_s().concat(" nickel")
      final_change.push(nickels)
    end

    if change < 5 && change > 0
      pennies = change.to_s().concat(" pennies")
      final_change.push(pennies)
    end
      final_change.join(" and ")
  end
end
