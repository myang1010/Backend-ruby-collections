# Write a program prompt the user for words and add each to an array.  
# The user should be able to add as many words as they like, until they just hit enter to return a blank word. 
# Then sort the array using the sort method and print it out. 

array = []
answer = ""

puts "Enter the word you want to add. Hit Enter to quit."
answer = gets.chomp
until answer == "" do
    while answer.index(/\d/) 
        puts "Words shouldn't contain numbers. Please enter another word, hit Enter to quit."
        #puts question
        answer = gets.chomp
        break if answer == ""
    end
    break if answer ==""
    array.push(answer)
    puts "Enter another word? Hit Enter to quit."
    answer = gets.chomp  
end

array.sort!.each do |item|
    puts item
end    

