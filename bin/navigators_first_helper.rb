require_relative '../lib/bot'
require_relative '../app/user'
require_relative '../app/money'
require_relative '../lib/playing_card_obj_type'

module NavigatorsFirstHelper
  extend Bot

  bot :first
  user_input = User.new(gets.chomp)
  smart_bot :second, user_input.name
  user_input = User.new('Diller')
  smart_bot :second, user_input.name
  counting_money = Money.new
  smart_bot_count_money :third, counting_money.money
  bot :fourth
  r = []
  r << PlayingCardObjType::ACE
  puts r
end