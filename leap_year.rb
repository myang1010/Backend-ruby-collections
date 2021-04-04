#(4) Write a program, leap_year.rb.  
# It will ask the user for a starting year and an ending year, and it will then print out 
# all the leap years between them, including the starting or ending year if those are leap years. 
# The rules for leap years are: A leap year is divisible by 4, 
# except for years that are divisible by 100 -- those aren't leap years -- except for years that are divisible by 400, 
# which ARE leap years.

puts "Enter a starting year"
start_year = gets.chomp.to_i

puts "Enter an ending year"
end_year = gets.chomp.to_i

leap_year = []
i = start_year

while i >= start_year && i <= end_year 
    if i % 4 == 0 
        if i % 100 == 0 && i % 400 == 0
            leap_year.push(i) 
        else
            if i % 100 != 0
                leap_year.push(i) 
            end    
        end
    end 
    i+=1           
end

puts "\nBetween #{start_year} and #{end_year}, leap years are,"
leap_year.each do |year|
   puts year
end