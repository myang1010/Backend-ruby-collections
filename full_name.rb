#(1) Write a program which asks for a person's first name, then middle, then last.  
#It should store each of these parts in an array. Finally, it should greet the person using their full name.

array_question = ["Your first name? ", "Your middle name? ", "Your last name? "]
array_name = []

array_question.each do |question|
    puts question
    answer = gets.chomp

    while answer.index(/\d/) 
        puts "Name shouldn't contain numbers. Please enter name again."
        puts question
        answer = gets.chomp
    end
    array_name.push(answer) 
end

puts "Hi, #{array_name[0]} #{array_name[1]} #{array_name[2]}!"