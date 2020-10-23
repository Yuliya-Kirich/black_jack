# frozen_string_literal: true

class User
  attr_accessor :name, :money, :hand

  def initialize(name, hand = nil)
    @name = name
    @money = 100
    @hand = hand
  end

  def show
    "В банке #{@money} $"
  end
end
