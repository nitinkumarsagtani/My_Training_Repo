class Order

  def input
    
    @item_list = []
    
    puts "Enter the List Details :"
    while (string = gets) != "\n"
      @item_list << string.chomp.split(" ")
    end 

  end
  
  def output
    
    updated_price
    
    puts "\nOutput is : "
    @item_list.each do |element|
      puts "  #{element.map {|value| value == 'at' ? ':' : value }.join (" ")}\n"
    end

    puts "\n  Sales Tax : #{@total_sales_tax.round(2)}"
    puts "  Total : #{total_amount.round(2)}"
  
  end
end