#Program to join 2 user given arrays without using inbuilt functions in ruby
class ArrayInbuilt
  def array_size_input
    puts "Enter the number of elements in first array "
    @first_array_size = gets.chomp.to_i
    
    if @first_array_size > 0
      puts "Enter the number of elements in second array "
      @second_array_size = gets.chomp.to_i
      
      @second_array_size > 0
    end
  end

  def array_input
    @first_array = []
    @second_array = []
    
    puts "\nEnter the elements of first array : "
    @first_array_size.times do |index|
      @first_array[index] = gets.chomp
    end
    
    puts "\nEnter the elements of second array : "
    @second_array_size.times do |index|
      @second_array[index] = gets.chomp
    end
  end

  def create
    @joined_array = []
    @joined_array = @first_array + @second_array
  end

  def show
    puts "\nThe Given Arrays are : "
    print "#{@first_array}\n"
    print @second_array
    
    print "\n\nAfter joining 2 arrays, new array is : \n"
    print "#{@joined_array}\n"
  end
end

join_array = ArrayInbuilt.new
is_valid = join_array.array_size_input

if is_valid
  join_array.array_input
  join_array.create
  join_array.show
else
  puts "Invalid input"
end
