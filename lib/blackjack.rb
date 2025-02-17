def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card)
  card
  puts "Your cards add up to #{card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_tot)
  puts "Sorry, you hit #{card_tot}. Thanks for playing!"
  
end

def initial_round
 card_tot = deal_card + deal_card

 display_card_total(card_tot)
 return card_tot
end

def hit?(card)
  prompt_user
  input = get_user_input
  case input
  when "s"
    return card
  when "h"
    card += deal_card
    return card
  else 
    invalid_command
    prompt_user
    return card
  end
  

end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
    until card_total > 21 do 
  
    card_total = hit?(card_total)
    display_card_total(card_total)
    end
  
end_game(card_total)
end
    
