#(3) Write a program with a function add_up(i) . 
# It is to be passed a positive integer, and it will add all the numbers from 1 to that integer and return the sum. 
# Call the function three times within the program, and each time print out the return value.  Call the program add_up.rb.

def add_up(integer, kind = "number")
    while integer < 0 do
        puts "Please input a positive number"
        integer = gets.chomp.to_i
    end    
    sum = integer
    while integer >= 1
        sum += integer-1
        integer -= 1
    end    
    return sum
end

3.times do
    number = Random.rand(10)
    puts "#{number} adds up to #{add_up(number)}"
end

