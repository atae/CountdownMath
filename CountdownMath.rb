
exit = false

until exit == true
	inputValid = false
	array = Array.new(0)
	small = [1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10]
	large = [25,25,50,50,75,75,100,100]



	until inputValid == true
		puts "How many large numbers?"
		input = gets.chomp.to_i

		if input > 6 || input < 0
			puts "Invalid number. Try again."
		else	
			numberOfLarge = input
			numberOfSmall = 6 - numberOfLarge
			inputValid = true
		end
	end
	
	i = 0
	large_max = 7
	until i == numberOfLarge
	
		random_index = rand(0..large_max)
		array[i] = large[random_index]
		large.delete_at(random_index)
		large_max -= 1


		i += 1
	end
	max = 19

	until i == 6

		random_index = rand(0..max)
	

		array[i] = small[random_index]
		small.delete_at(random_index)
		max -= 1
		i += 1

	end
	i = 0


	solution = rand(100...1000).to_s

	final_array = array.map {|x| x.to_s}
	final_string = final_array.join(", ")

	puts "Your numbers are #{final_string}."
	puts "Solve for #{solution}."
	puts "Enter 'x' to exit. Press any other key to go again."
	choice = gets.chomp
	
	if choice == 'x' || choice == 'X'
		exit = true
	end

end







