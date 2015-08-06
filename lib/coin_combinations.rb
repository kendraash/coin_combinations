class Fixnum
  define_method(:coin_combinations) do
    change = []
    if self < 5
    change = self.to_s()
    change.concat(" pennies")
    end
    change
  end
end
