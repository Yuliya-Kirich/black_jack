module SkipTurn
  def skip_turn(new_card_diller_user)
    puts 'Diller ход:'
    if new_card_diller_user.sum_card < 17
      puts 'Берет одну карту'
      new_card_diller_user.view_add_card
    else
      bot :eight
    end
  end
end