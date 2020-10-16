# frozen_string_literal: true

module Bot
  BOT = { first: 'Добро пожаловать в игру Black Jack. Как Вас зовут? Напишите ваше имя.',
          second: ' игра - Black Jack, началась. ',
          third: 'У Вас $:',
          third_diller: 'У Diller $:',
          fourth: 'Diller раздает карты ...',
          fifth: 'Желаете взять еще карту? Нажмите 1 - "да", любая клавиша - "нет" ',
          six: 'Diller желает взять еще карту? Нажмите 1 - "да", любая клавиша - "нет" ',
          seven: 'Ваш ход:
 Нажать 1 - если хотите добавить карту. Сумма очков пересчитается. Может быть добавлена только одна карта.
 Нажать 2 - если хотите открыть карты. Открываются карты дилера и игрока, игрок видит сумму очков дилера,
идет подсчет результатов игры.
 Нажать любую клавишу, если хотите пропустить ход. В этом случае, ход переходит к дилеру.',
          eight: 'Ход передан - ',
          nine: 'Открыть карты',
          ten: 'Хотите ли сыграть еще раз?
Нажать 0 - если "нет",
Нажать любую клавишу, если "да"',
          end: 'Игра закончена!',
          add_card: 'Берет одну карту',
          diller_step: 'Diller ход:',
          diller_cards: 'Карты Diller: ',
          won: 'Вы победили!',
          lous: 'Вы проиграли!',
          draw: 'Ничья',
          eror: 'Ошибка' }.freeze

  def bot(user_input)
    puts BOT[user_input]
  end

  def smart_bot(user_input, name)
    puts "#{name}, #{BOT[user_input]}"
  end

  def smart_bot_count_money(user_input, money)
    puts "#{BOT[user_input]} #{money} $."
  end

  def points(name, sum_card)
    puts " #{name} сумма очков: #{sum_card} \n\n"
  end
end
