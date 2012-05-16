quit = false
while !quit

	print "\n  What would you like to do? ((R)un, (L)ist, (D)oc, (Q)uit) "
	input = gets.chomp
	if input.nil? || input == ""
		
	else
		case input[0].upcase
			when "R"
				print "\n  Please enter a Problem Number: "

				@problem_number = gets.chomp
				
				# to_do:check if the requested problem has been finished.
				# 
				
				# run the requested file
          load File.dirname(__FILE__) + "/problems/#{@problem_number.to_i.to_s}.rb"
				

			when "L"
				#list all problems
				load File.dirname(__FILE__) + "/list.rb"
			when "D"
				print "\n  For which Problem would you like to see the documentation?"
				@problem_number = gets.chomp
				
				load File.dirname(__FILE__) + "/doc/#{@problem_number.to_i.to_s}.rb"
				puts "\n  " + @doc.to_s
			when "Q"
				quit = !quit
			else
				print "\n  I don't understand that input..."
				gets 
		end
	end
end