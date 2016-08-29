class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    if @sodas.include?(soda_brand)
      return soda.brand
    else
      return nil
    end
  end

  def sell(soda_brand)
    if find_soda(soda_brand) == soda.brand
      @sodas.delete(soda_brand)
      @cash += soda.price
    else
      return nil
    end
  end
end
