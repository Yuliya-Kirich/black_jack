class PlayerPlayingCard
  attr_accessor :card_set

  @@hand_counter = 0
  def initialize(card_set)
    @card_set = card_set
    @sum_card = 0
    @user_card = nil
  end

  def notification_counter
    puts "  Ваша сумма очков: #{@sum_card} \n\n"
  end

  def view_first
    ytt = []
    @@hand_counter += 1
      @card_set.each { |set_value| ytt << set_value[0].to_a }
    if @@hand_counter > 1
      @user_card = ytt[@@hand_counter..@@hand_counter += 1].flatten
    else
      @user_card = ytt[@@hand_counter-1..@@hand_counter].flatten
    end
  end

  def show_card
    @user_card.each { |c| print c if c.class == String }
    sum_points
  end

  def view_add_card
    ytt = []
    @card_set.each { |set_value| ytt << set_value[0].to_a }
    ytt[@@hand_counter].flatten.each {|c|  @user_card << c }
    show_card
    sum_points
    notification_counter
  end

  private
  def sum_points
    @sum_card = 0
    @user_card.each {|c| @sum_card += c if c.class == Integer}
  end
end
