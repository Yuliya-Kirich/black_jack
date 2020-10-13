class PlayerPlayingCard
  attr_accessor :card_set, :sum_card

  @@hand_counter = 0

  def initialize(card_set)
    @card_set = card_set
    @sum_card = 0
    @cards_on_hand = nil
  end

  def notification_counter(user)
    puts " #{user.name} сумма очков: #{@sum_card} \n\n"
  end

  def view_first
    @@hand_counter += 1
    cleared_cards = []
    @card_set.each { |set_value| cleared_cards << set_value[0].to_a }
    # Счетчик hand_counter = 1, при первом вызове view_first, отрабатывает по 2 условию
    @cards_on_hand = if @@hand_counter > 1
                       cleared_cards[@@hand_counter..@@hand_counter += 1].flatten
                     else
                       cleared_cards[@@hand_counter - 1..@@hand_counter].flatten
                     end
  end

  def accounting_card
    ace_count = 0
    @cards_on_hand.each do |c|
      ace_count += 1 if c == :ace
    end
    sum_points(ace_count)
  end

  def show_card
    @cards_on_hand.each { |c| print c if c.class == String }
    accounting_card
  end

  def view_add_card
    ytt = []
    @card_set.each { |set_value| ytt << set_value[0].to_a }
    ytt[@@hand_counter].flatten.each { |c| @cards_on_hand << c }
    show_card
  end

  def winner
    @sum_card
  end

  private

  def sum_points(ace_count)
    @sum_card = 0
    @cards_on_hand.each { |c| @sum_card += c if c.class == Integer }
    @sum_card = @sum_card - (11 * ace_count) + (2 * ace_count) if !ace_count.zero? && @sum_card > 21
  end
end
