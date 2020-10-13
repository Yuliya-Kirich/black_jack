require_relative 'bot'
require_relative '../lib/add_card'
require_relative '../lib/skip_turn'


module ServiceSelectsAction
  extend AddCard
  extend SkipTurn


  def user_selects_action(diller_input,
                          new_card_diller_user,
                          new_card_user,
                          user_input)
    bot :seven
    user_desire = gets.chomp.to_i
    if user_desire == 1
      add_card(new_card_diller_user,
               new_card_user,
               user_input)
    elsif user_desire == 2
      bot :nine
    else
      skip_turn(new_card_diller_user)
    end
  end
end
