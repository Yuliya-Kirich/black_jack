require_relative '../lib/bot'
require_relative '../app/user'
require_relative '../app/money'
require_relative '../model/card_distribution_model'

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
  user_input.issued_card
  user_input.value_of_card
  #user_input.print_cost
end
