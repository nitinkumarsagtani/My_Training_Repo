require_relative 'category_info'
require_relative 'is_imported'
require_relative 'amount'

class Item < Amount
  include CategoryInfo
  include IsImported

  @quantity = []
  @price  = []
  
  def input
    @item_list = []
    
    puts "Enter the List Details :"
    while (string = gets) != "\n"
      @item_list << string.chomp.split(" ")
    end 

  end
  
  def attributes
    @quantity = @item_list.map(& :first)
    @price = @item_list.map(& :last)
    
    is_tax_free?
    is_imported?
  end
end

item = Item.new

item.input
item.attributes
item.tax_calculator
item.show_output
