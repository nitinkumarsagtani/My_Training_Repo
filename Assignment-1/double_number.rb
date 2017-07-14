#Program to Double the elements of an array using map function
class DoubleNumber
  def array_size_input
    puts "\nEnter the number of elements in the array : "
    @no_of_elements = gets.chomp.to_i  
  end

  def validate_array_size
     @no_of_elements > 0
  end

  def array_input
    @array = []
    
    puts "\nEnter the elements of the array"
    @no_of_elements.times do |index|
      @array[index] = gets.chomp
    end
  end
  
  def double_value (element)
    element == element.to_i.to_s ? element.to_i * 2 : element.to_f * 2
  end
  
  def show 
    puts "\nThe array after double of each element is : "
    p @array.map {|element| 
      double_value(element)
      }
  end
end

double_number = DoubleNumber.new
double_number.array_size_input
is_valid = double_number.validate_array_size

if is_valid
  double_number.array_input
  double_number.show
else
  puts "Input is not valid"
end