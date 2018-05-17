require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
 num = 0
  num += deal_card
  num += deal_card
  display_card_total(num)
return num
end

def hit?(current)
  prompt_user
   value = get_user_input
    if value == 'h'
      current += deal_card


    elsif value == 's'
      return current
    else
      invalid_command
      hit?(current)
    end


    current

end

def invalid_command
  puts "Please enter a valid command."
end



def runner
  welcome
  card_total = initial_round
  until card_total > 21
  card_total = hit?(card_total)
  display_card_total(card_total)
    end

  end_game(card_total)

end

