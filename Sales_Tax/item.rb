require_relative 'sales_tax_calculator'

class Item < SalesTaxCalculator
  
  def attributes
    
    @quantity = []
    @price  = []
    
    @quantity = @item_list.map(& :first)
    @price = @item_list.map(& :last)
    
    is_tax_free?
    is_imported?

  end

  def is_tax_free?
    
    @taxable = []
    @words = ["book","books","chocolate","chocolates","pills","medicine","medicines","food"]
    
    @item_list.length.times do |index|
      @taxable[index] = (@item_list[index] & @words).empty?
    end

  end

  def is_imported?
    
    @import = []
    
    @item_list.length.times do |index|
      @import[index] = @item_list[index].include?("imported")
    end
  
  end

  def updated_price
    
    @item_list.length.times do |index|
      @item_list[index][-1] = @price[index].round(2)
    end

  end

end

item = Item.new

item.input
item.attributes
item.tax_calculator
item.updated_price
item.output
