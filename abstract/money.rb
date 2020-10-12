class Money
  attr_accessor :money
  def initialize
    @money = 100
  end

  def show
    puts "В банке #{@money} $"
  end
end
