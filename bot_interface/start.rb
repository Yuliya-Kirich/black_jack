# frozen_string_literal: true

require_relative 'bot'
require_relative '../lib/user'
require_relative '../lib/hand'
require_relative '../lib/deck'
require_relative '../lib/card'
require_relative 'create'
require_relative 'user_case'
require_relative 'show_result'

class Start
  extend Bot

  diller_input, user_input = Create.users_init
  game_completion_symbol = nil

  loop do
    if game_completion_symbol == 0
      bot :end
      break
    end

    new_round = Create.init_deck
    new_card_user = Create.user_hand_init(new_round, user_input)
    new_card_diller_user = Create.diller_hand_init(diller_input, new_round)
    bot :seven
    user_desire = gets.chomp.to_i
    if user_desire == 1
      UserCase.player_action_init(new_card_user, new_round, user_input)
      UserCase.diller_action_init(new_card_diller_user, new_round)
    elsif user_desire == 2
      bot :nine
    else
      UserCase.diller_action_init(new_card_diller_user, new_round)
    end
    ShowResult.dillers_result(diller_input, new_card_diller_user)
    ShowResult.who_won(diller_input, new_card_diller_user, new_card_user, user_input)
    bot :ten
    game_completion_symbol = gets.chomp.to_i
  end
  end

