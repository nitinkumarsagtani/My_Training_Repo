require_relative 'sales_tax_calculator'

class Item
  include SalesTaxCalculator

  attr_accessor :quantity, :price, :name, :sales_tax, :import_tax

  TAX_FREE_ITEMS = ["book","chocolate","chocolates","pills","food","medicine"]
  
  def is_imported?
    name.split.include? "imported"
  end

  def is_tax_free?
    !(name.split & TAX_FREE_ITEMS).empty?
  end
  
  def get_updated_price
    price + get_total_tax
  end

  def get_total_tax
    sales_tax + import_tax
  end

  def self.round_off(value)
    (value * 20).round/20.0
  end

end

item_list = []

puts "Enter the item details : "
while (str = gets) != "\n"
  item_list << str.chomp.split(" ")
end

items = []
item_list.each do |element|
  item = Item.new
  item.quantity = element[0].to_i
  item.price = element[-1].to_f
  item.name = element[1..-2].join(' ')
  item.calculate_tax
  items << item
end

puts "\nOutput is : " 
items.each do |item|
  puts "  #{item.quantity} #{item.name} #{Item.round_off(item.get_updated_price)}\n"
end

sum = 0
items.each do |item|
  sum += item.get_total_tax
end

puts "  Sales Tax : #{Item.round_off(sum)}"

total_amount = 0
items.each do |item|
  total_amount += item.get_updated_price
end

puts "  Total : #{Item.round_off(total_amount)}"



