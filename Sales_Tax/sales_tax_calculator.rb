require_relative 'order'

class SalesTaxCalculator < Order

  def tax_calculator
    
    @total_sales_tax = 0
    
    @price.length.times do |index|
      
      sum = 0
      
      if @taxable[index] == false && @import[index] == true
        sum = sum + (@quantity[index].to_i*@price[index].to_f*0.05) 
        sales_tax_price(index,sum)
      
      elsif @taxable[index] == false && @import[index] == false
        sales_tax_price(index,sum)
      
      elsif @taxable[index] == true && @import[index] == false
        sum = sum + ((@quantity[index].to_f*@price[index].to_f)*0.10)
        sales_tax_price(index,sum)
      
      else
        sum = sum + (@quantity[index].to_f*@price[index].to_f*0.15)
        sales_tax_price(index,sum)
      end

    end

  end
  
  def sales_tax_price (index,sum)
    
    @total_sales_tax = @total_sales_tax + sum
    @price[index] = @price[index].to_f + sum
  
  end

  def total_amount
    
    total = 0
    
    @price.each do |element|
      total = total + element
    end
    
    total

  end

end