# frozen_string_literal: true

require_relative '../lib/skip_turn'

module AddCard
  extend SkipTurn
  def add_card(new_card_diller_user,
               new_card_user,
               user_input)
    new_card_user.view_add_card
    new_card_user.notification_counter(user_input)
    skip_turn(new_card_diller_user)
  end
end
