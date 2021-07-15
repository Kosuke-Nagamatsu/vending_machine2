class Drink
  attr_reader :name, :price

  def self.cola
    self.new( type1: {price: 120, name: 'コーラ', stock: 5} )
  end

  def self.redbull
    self.new(200, 'レッドブル').to_info
  end

  def self.water
    self.new(100, '水').to_info
  end

  def initialize price, name
    @name = name
    @price = price
  end

  def to_info
    { name: @name, price: @price, stock: 5 }
  end
end
