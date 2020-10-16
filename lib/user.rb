# frozen_string_literal: true

class User
  attr_accessor :name, :money

  def initialize(name)
    @name = name
    @money = 100
  end

  def show
    puts "В банке #{@money} $"
  end
end
