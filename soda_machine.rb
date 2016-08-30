require_relative 'soda'
class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      end
    end
    nil
  end

  def sell(soda_brand)
    #check if soda is in machine
    #if it is:
      #remove that instance from machine
      #add soda price to cash in the machine
    #if it isn't return nil
    soda = find_soda(soda_brand)
    if soda
      @sodas.delete(soda)
      @cash += soda.price
    else
      return nil
    end
  end
end
a = Soda.new({brand: "Pepsi", price: 0.65})
b = Soda.new({brand: "Coke", price: 0.65})
c = Soda.new({brand: "Sprite", price: 0.65})
my_sodas = [a, b, c]
machine = SodaMachine.new(sodas: my_sodas, cash: 1.00)
p machine.sell("Pepsi")
