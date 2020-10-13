require_relative 'bot'

module AssistantsNavigator
  extend Bot

  def new_play_space
    bot :first
    user_input = User.new(gets.chomp)
    smart_bot :second, user_input.name
    diller_input = User.new("Diller")
    smart_bot :second, diller_input.name
    diller_counting_money = Money.new
    user_counting_money = Money.new
    smart_bot_count_money :third, user_counting_money.money
    return user_input, diller_input, diller_counting_money, user_counting_money
  end

  def create_card
    new_round = PlayingCardsDeck.new.new_cards_deck
    bot :fourth
    new_card_diller_user = PlayerPlayingCard.new(new_round)
    new_card_user = PlayerPlayingCard.new(new_round)
    return new_card_diller_user, new_card_user
  end

end
