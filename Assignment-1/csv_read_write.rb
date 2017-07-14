#Program to Read from a CSV file, multiple two columns, and then write back to the CSV file.
require 'csv'
result = []

CSV.foreach('read1.csv', :headers => true) do |row|
  result << (row[0].to_i*row[1].to_i)
end

co = CSV.read('read1.csv', :headers => true)
co.each do |cost|
  cost << result.shift
end

CSV.open('output.csv', 'w', 
    :write_headers=> true,
    :headers => ["quantity","price","total"] #< column header
  ) do|csv_object|
  
  co.each do |row_array|
    csv_object << row_array
	end
end
