#Program to print the frequency of occurence of each character inside an array, Using hash table.
class Frequency
  def array_size_input
    puts "\nNumber of elements in the array is : "
    @no_of_elements = 1 + rand(10)
    puts @no_of_elements    
  end

  def array_input
    @array = []
    
    puts "\nEnter the #{@no_of_elements} elements of the array"
    @no_of_elements.times do |index|
      @array[index] = gets.chomp
    end
  end

  def count_element
    @count = Hash.new 0
    
    @array.each do |element|
      @count[element] += 1
    end
  end

  def show
    puts "\nThe given array is : s"
    p @array
    
    puts "\nThe frequency of each element in the array is : "
    p @count
  end
end

object = Frequency.new
object.array_size_input
object.array_input
object.count_element
object.show