require_relative 'bot'

class Create
  extend Bot

  def self.users_init
    bot :first
    user_input = User.new(gets.chomp)
    diller_input = User.new("Diller")
    bot :second
    smart_bot_count_money :third, user_input.money
    smart_bot_count_money :third_diller, diller_input.money
    return diller_input, user_input
  end

  def self.init_deck
    bot :fourth
    new_round = Deck.new
    new_round.generate_cards
    new_round
  end

  def self.user_hand_init(new_round, user_input)
    new_card_user = Hand.new(new_round.give_card)
    user_input.hand = new_card_user
    new_card_user.cards_on_hand << new_round.give_card
    puts new_card_user.show
    user_input.money -= 10
    puts user_input.show
    new_card_user.sum
    new_card_user.aces_recount
    points(user_input.name, new_card_user.sum_card)
    new_card_user
  end

  def self.diller_hand_init(diller_input, new_round)
    new_card_diller_user = Hand.new(new_round.give_card)
    diller_input.hand = new_card_diller_user
    new_card_diller_user.cards_on_hand << new_round.give_card
    new_card_diller_user.sum
    new_card_diller_user.aces_recount
    diller_input.money -= 10
    new_card_diller_user
  end
end