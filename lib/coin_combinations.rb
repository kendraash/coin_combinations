class Fixnum
  define_method(:coin_combinations) do
    change = self
    final_change = []
  if change < 10 && change >= 5
    change_nickels = change./(5)
    change = change.-(change_nickels.*(5)) 
    nickels = change_nickels.to_s().concat(" nickel and")
    final_change.push(nickels)
  end
  if change < 5
    pennies = change.to_s().concat(" pennies")
    final_change.push(pennies)
    end
    final_change.join(" ")
  end
end
