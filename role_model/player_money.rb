require_relative '../abstract/money'

class PlayerMoney < Money

  def initialize
    super
    @money = 100
  end
end
