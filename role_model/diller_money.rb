require_relative '../abstract/money'

class DillerMoney < Money

  def initialize
    super
    @money = 100
  end
end
