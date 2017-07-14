#Program to print Star Pyramid
class Pyramid
  def initialize(no_of_lines)
    @no_of_lines = no_of_lines
  end
  
  def validate_input
    @no_of_lines > 1
  end

  def show
    puts "The pyramid of #{@no_of_lines} lines is : " 
    @no_of_lines.times do |index|
      ((@no_of_lines - 1) - index).times do
        print " "
      end

      (2*(index + 1) - 1).times do 
        print '*'
      end

      print "\n"
    end
  end
end

puts "Enter the number of lines in pyramid "
star_pyramid = Pyramid.new(gets.chomp.to_i)
is_valid = star_pyramid.validate_input

if is_valid
  star_pyramid.show
else
  puts "Input is not valid."
end
