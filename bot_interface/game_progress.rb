# frozen_string_literal: true

require_relative 'bot'
require_relative '../lib/user'
require_relative '../lib/money'
require_relative '../lib/hand'
require_relative '../lib/deck'
require_relative '../lib/card'

class GameProgress
  extend Bot

  bot :first

  Card.new
  user_input = User.new(gets.chomp)
  diller_input = User.new("Diller")

  bot :second
  smart_bot_count_money :third, user_input.money
  smart_bot_count_money :third_diller, diller_input.money

  game_completion_symbol = nil
  loop do

    if game_completion_symbol == 0
      bot :end
      break
    end

    bot :fourth
    new_round = Deck.new
    new_round.shuffle_cards
    new_card_diller_user = Hand.new
    new_card_user = Hand.new
    new_card_user.add_card(new_round.select_card)
    new_round.give_card
    new_card_user.add_card(new_round.select_card)
    new_round.give_card
    new_card_user.show_card
    user_input.money -= 10
    user_input.show
    new_card_user.sum
    new_card_user.aces_recount
    points(user_input.name, new_card_user.sum_card)
    new_round.give_card
    new_card_diller_user.add_card(new_round.select_card)
    new_round.give_card
    new_card_diller_user.add_card(new_round.select_card)
    new_round.give_card
    new_card_diller_user.sum
    new_card_diller_user.aces_recount
    diller_input.money -= 10
    bot :seven
    user_desire = gets.chomp.to_i
    if user_desire == 1
      new_card_user.add_card(new_round.select_card)
      new_round.give_card
      new_card_user.show_card
      new_card_user.sum
      new_card_user.aces_recount
      points(user_input.name, new_card_user.sum_card)
      if (new_card_diller_user.sum_card.to_i) < 17
        bot :add_card
        new_card_diller_user.add_card(new_round.select_card)
        new_round.give_card
      else
        bot :eight
      end
    elsif user_desire == 2
      bot :nine
    else
      bot :diller_step
      if (new_card_diller_user.sum_card.to_i) < 17
        bot :add_card
        new_card_diller_user.add_card(new_round.select_card)
        new_round.give_card
      else
        bot :eight
      end
    end
    bot :diller_cards
    new_card_diller_user.show_card
    new_card_diller_user.sum
    new_card_diller_user.aces_recount
    points(diller_input.name, new_card_diller_user.sum_card)
    if ((new_card_user.sum_card > new_card_diller_user.sum_card) ||
        (new_card_diller_user.sum_card > 21)) && (new_card_user.sum_card < 22)
      user_input.money += 20
      diller_input.money
      if new_card_diller_user.sum_card < 21
        puts "Вы победили!
              У Вас больше очков, чем у диллера на #{new_card_user.sum_card - new_card_diller_user.sum_card}."
      else
        bot :won
      end
    elsif ((new_card_user.sum_card < new_card_diller_user.sum_card) ||
        (new_card_user.sum_card > 21)) && (new_card_diller_user.sum_card < 22)
      user_input.money
      diller_input.money += 20
      if new_card_user.sum_card < 21
        puts "Вы проиграли!
              У диллера больше очков, чем у Вас на #{new_card_diller_user.sum_card  - new_card_user.sum_card}."
      else
        bot :lous
      end
    elsif new_card_user.sum_card == new_card_diller_user.sum_card ||
          (new_card_user.sum_card > 21 && new_card_diller_user.sum_card > 21)
      bot :draw
      user_input.money += 10
      diller_input.money += 10
    else
      bot :eror
    end
    puts "В банке у Вас #{user_input.money}$, у диллера #{diller_input.money}$. \n \n"
    bot :ten
    game_completion_symbol = gets.chomp.to_i
  end
  end

