#Program to print numbers from 1 to 100
class Number
  def print
    File.open("numbers.csv","w") do |file|
      file.puts "S. No."
      
      100.times do |number|
        file.puts "#{number+1}"
      end
    end
  end
end

print_number = Number.new
print_number.print