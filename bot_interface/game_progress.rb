# frozen_string_literal: true

require_relative 'bot'
require_relative 'service_selects_action'
require_relative 'service_determs_winner'
require_relative 'assistants_navigator'
require_relative '../game/user'
require_relative '../game/money'
require_relative '../game/player_playing_card'
require_relative '../game/playing_cards_deck'

module GameProgress
  extend ServiceSelectsAction
  extend ServiceDetermsWinner
  extend AssistantsNavigator

  def game_progress(diller_counting_money,
                    diller_input,
                    user_counting_money,
                    user_input)
    game_completion_symbol = nil
    loop do
      if game_completion_symbol == 0
        puts 'Игра закончена!'
        break
      end
      new_card_diller_user, new_card_user = create_card
      new_card_user.view_first
      new_card_user.show_card
      user_counting_money.money -= 10
      user_counting_money.show
      new_card_user.notification_counter(user_input)
      new_card_diller_user.view_first
      new_card_diller_user.accounting_card
      diller_counting_money.money -= 10
      user_selects_action(diller_input, new_card_diller_user, new_card_user, user_input)
      puts 'Карты Diller: '
      new_card_diller_user.show_card
      new_card_diller_user.notification_counter(diller_input)
      determs_winner(diller_counting_money, new_card_diller_user, new_card_user, user_counting_money)
      puts "В банке у Вас #{user_counting_money.money}$, у диллера #{diller_counting_money.money}$."
      bot :ten
      game_completion_symbol = gets.chomp.to_i
    end
  end
end
