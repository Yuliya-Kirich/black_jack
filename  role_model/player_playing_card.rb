class PlayerPlayingCard
  attr_accessor :card_set

  @@hand_counter = 1
  def initialize(card_set)
    @card_set = card_set
    @sum_card = 0
  end

  def notification_counter
    puts "  Ваша сумма очков: #{@sum_card} \n\n"
  end

  def view_first
    ytt = []
    @card_set.each { |set_value| ytt << set_value[0].to_a }

    ddd = ytt[0..@@hand_counter].flatten
    ddd.each { |c| print c if c.class == String }
  end

  def sum_of_points
    @sum_card = 0
    points = @card_set[0..@@hand_counter]
    points.each { |level| level[0].each { |value| @sum_card += value[0][1][0] } }
  end

  def view_add_card
    @@hand_counter += 1
    view_first
    sum_of_points
    notification_counter
  end
end
