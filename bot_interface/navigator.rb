require_relative 'bot'
require_relative 'assistants_navigator'
require_relative 'game_progress'
require_relative 'service_selects_action'
require_relative 'service_determs_winner'
require_relative '../lib/add_card'
require_relative '../lib/skip_turn'
require_relative '../lib/draw'
require_relative '../lib/lost'
require_relative '../lib/won'

class Navigator
  extend Bot
  extend AssistantsNavigator
  extend GameProgress
  extend ServiceSelectsAction
  extend AddCard
  extend SkipTurn
  extend ServiceDetermsWinner
  extend Draw
  extend Lost
  extend Won

  user_input, diller_input, diller_counting_money, user_counting_money = new_play_space
  game_progress(diller_counting_money, diller_input, user_counting_money, user_input)
end
