# frozen_string_literal: true

require_relative '../lib/bot'
require_relative '../abstract/user'
require_relative '../abstract/money'
require_relative '../role_model/player_role'
require_relative '../role_model/diller_role'
require_relative '../role_model/player_money'
require_relative '../role_model/diller_money'
require_relative '../role_model/player_playing_card'
require_relative '../abstract/playing_cards_deck'
require_relative '../role_model/diller_playing_card'

module NavigatorsStart
  extend Bot

  bot :first
  user_input = PlayerRole.new(gets.chomp)
  smart_bot :second, user_input.name
  diller_input = DillerRole.new
  smart_bot :second, diller_input.name
  diller_counting_money = DillerMoney.new
  user_counting_money = PlayerMoney.new
  smart_bot_count_money :third, user_counting_money.money
  n = nil

  loop do
    if n == 0
      puts 'Игра закончена!'
      break
    end
    new_round = PlayingCardsDeck.new.new_cards_deck
    bot :fourth
    new_card_diller_user = DillerPlayingCard.new(new_round)
    new_card_user = PlayerPlayingCard.new(new_round)
    new_card_user.view_first
    new_card_user.show_card
    user_counting_money.money -= 10
    user_counting_money.show
    new_card_user.notification_counter(user_input)
    new_card_diller_user.view_first
    new_card_diller_user.show_card
    diller_counting_money.money -= 10
    diller_counting_money.show
    new_card_diller_user.notification_counter(diller_input)

    loop do
      bot :seven
      d = gets.chomp.to_i
      if d == 1
        new_card_user.view_add_card
        # new_card_user.show_card
        new_card_user.notification_counter(user_input)
        puts 'Diller'
        bot :seven
        dd = gets.chomp.to_i
        if dd == 1
          new_card_diller_user.view_add_card
        else
          bot :eight
        end
      elsif d == 2
        bot :nine
        new_card_diller_user.show_card
        new_card_diller_user.notification_counter(diller_input)
      else
        bot :eight
        puts 'Diller'
        bot :seven
        dd = gets.chomp.to_i
        if dd == 1
          new_card_diller_user.view_add_card
        else
          bot :eight
        end
      end
      break
    end

    puts 'Карты Diller: '
    new_card_diller_user.show_card
    new_card_diller_user.notification_counter(diller_input)
    if ((new_card_user.winner > new_card_diller_user.winner) || (new_card_diller_user.winner > 21)) && (new_card_user.winner < 22)
      user_counting_money.money += 20
      diller_counting_money.money
      if new_card_diller_user.winner < 21
        puts "Вы победили!
                  У Вас больше очков, чем у диллера на #{new_card_user.winner - new_card_diller_user.winner}."
      else
        puts 'Вы победили!'
      end
    elsif ((new_card_user.winner < new_card_diller_user.winner) || (new_card_user.winner > 21)) && (new_card_diller_user.winner < 22)
      user_counting_money.money
      diller_counting_money.money += 20
      if new_card_user.winner < 21
        puts "Вы проиграли!
            У диллера больше очков, чем у Вас на #{new_card_diller_user.winner - new_card_user.winner}."
      else
        puts 'Вы проиграли!'
      end
    elsif new_card_user.winner == new_card_diller_user.winner || (new_card_user.winner > 21 && new_card_diller_user.winner > 21)
      puts 'Ничья'
      user_counting_money.money += 10
      diller_counting_money.money += 10
    else
      puts 'Ошибка'
    end
    puts "В банке у Вас #{user_counting_money.money}$, у диллера #{diller_counting_money.money}$."

    bot :ten
    n = gets.chomp.to_i
  end
end
