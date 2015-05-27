class Hangman
	def initialize
		list = ["banana","table","awesome"]
		@word = list.sample
		@letters_in_word = @word.split("")
		@tries = 3
		@score = 0

		@board = []
		@letters_in_word.each do |letter|
			@board.push "_"
		  end
		end

		def over?
			@tries == 0 || @board.join("") == @word
		end

		def show_me_the_board
			@board
		end

		def tries
			@tries
		end

		def score
			@score
		end

		def hint
			@hint 
			puts "#{word}"
		end


		def record_letter the_letter_that_was_guessed
			have_seen_a_match = false

			index = 0
			@letters_in_word.each do |letter|
				if letter == the_letter_that_was_guessed
					have_seen_a_match = true 
					@board[index] = letter
			
				end
				index += 1
			end

			if have_seen_a_match
				puts "Your guess was right"
			else
				puts "Your guess was wrong"
				@tries -= 1
			end
		end
	end

	while true

	game = Hangman.new

	until game.over?
		puts "The board is: #{game.show_me_the_board}"


		print "Pick a letter > "
		your_guess = gets.chomp

		game.record_letter your_guess

		puts "You have #{game.tries} tries left" 

	end


	  if "#{game.tries}" == '0'
	  	puts "Your score is #{game.score - 1}."
	  else
	  	puts "Your score is #{game.score + 1}."
	  end
	
	puts "Do you want to play again? (yes or no)"
	response = gets.chomp
	if response == 'yes'
		game = Hangman.new
	else
		break
	end
end





