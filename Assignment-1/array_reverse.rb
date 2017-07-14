
class Array
  def reverse_n
    reversed_array = []    
    (length - 1).downto(0) do |index|
      reversed_array << self[index]
    end
    p reversed_array
  end

end

#array = Array.new 
array = ['x', 1, 8, 'y']
array.reverse_n
