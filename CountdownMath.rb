
exit = false

until exit == true
	inputValid = false
	array = Array.new(0)


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

	until i == numberOfLarge
		array[i] = rand(10...100)

		until array[i]%5 == 0
			array[i] = rand(10...100)
		end

		i += 1
	end


	until i == 6

			array[i] = rand(1..9)

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







