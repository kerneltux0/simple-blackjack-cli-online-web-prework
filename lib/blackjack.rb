def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input=gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total+=deal_card
  card_total+=deal_card
  puts "Your cards add up to #{card_total}"
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  get_user_input
  if get_user_input == "s"
    puts "Type 'h' to hit or 's' to stay"
  if get_user_input == "h"
    card_total+=deal_card
  end  
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  until card_total > 21
    welcome
    initial_round
    display_card_total(card_total)
    prompt_user
    hit?
    end_game(card_total)
  end
end  
