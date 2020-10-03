# frozen_string_literal: true

module Bot
  BOT = { first: 'Добро пожаловать в игру Black Jack. Как Вас зовут? Напишите ваше имя.',
          second: ' игра - Black Jack, началась. ',
          third: 'У Вас и диллера по:',
          fourth: 'Diller раздает карты ...',
          fifth: 'Желаете взять еще карту? Нажмите 1 - "да", любая клавиша - "нет" '}.freeze

  def bot(user_input)
    puts BOT[user_input]
  end

  def smart_bot(user_input, name)
    puts "#{name}, #{BOT[user_input]}"
  end

  def smart_bot_count_money(user_input, money)
    puts "#{BOT[user_input]} #{money} $."
  end
end
