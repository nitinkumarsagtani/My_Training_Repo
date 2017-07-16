class Amount
  
  @@total_sales_tax = 0.0

  def tax_calculator
    @price.length.times do |index|
      sum = 0.0
      
      if @category[index] == false && @import[index] == true
        sum = sum + (@quantity[index].to_i*@price[index].to_f*0.05) 
        sales_tax_price(index,sum)
      
      elsif @category[index] == false && @import[index] == false
        sales_tax_price(index,sum)
      
      elsif @category[index] == true && @import[index] == false
        sum = sum + ((@quantity[index].to_f*@price[index].to_f)*0.10)
        sales_tax_price(index,sum)
      
      else
        sum = sum + (@quantity[index].to_f*@price[index].to_f*0.15)
        sales_tax_price(index,sum)
      end
    end
  end
  
  def sales_tax_price (index,sum)
    @@total_sales_tax = @@total_sales_tax + sum
    @price[index] = @price[index].to_f + sum
  end

  def updated_price
    @item_list.length.times do |index|
      @item_list[index][-1] = @price[index].round(2)
    end
  end

  def total_amount
    total = 0
    @price.each do |element|
      total = total + element
    end
    total
  end

  def show_output
    updated_price
    puts "\nOutput is : "
    @item_list.each do |element|
      puts "  #{element.map {|value| value == 'at' ? ':' : value }.join (" ")}\n"
    end

    puts "\n  Sales Tax : #{@@total_sales_tax.round(2)}"
    puts "  Total : #{total_amount.round(2)}"
  end
end