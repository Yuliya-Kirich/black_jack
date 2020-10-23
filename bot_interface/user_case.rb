require_relative 'bot'

class UserCase
  extend Bot
  def self.player_action_init(new_card_user, new_round, user_input)
    new_card_user.cards_on_hand << new_round.give_card
    puts new_card_user.show
    new_card_user.sum
    new_card_user.aces_recount
    points(user_input.name, new_card_user.sum_card)
  end
  def self.diller_action_init(new_card_diller_user, new_round)
    if (new_card_diller_user.sum_card.to_i) < 17 && (new_card_diller_user.cards_on_hand.length < 3)
      bot :add_card
      new_card_diller_user.cards_on_hand << new_round.give_card
    else
      bot :eight
    end
  end
end