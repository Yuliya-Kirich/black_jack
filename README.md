#Механика и правила игры

>Есть игрок (пользователь) и дилер (управляется программой).
>>Консоль запрашивает у пользователя имя после чего, начинается игра:
>>>У пользователя и дилера в банке находится 100 долларов.
> 1) Пользователю выдаются 2 случайные карты, которые он видит, (карты указываем условными обозначениями, например, «К+» - король крестей, «К<3» - король черв, «К^» - король пик, «К<>» - король бубен и т.д. При желании, можете использовать символы юникода для мастей.) 
> 2) Также 2 случайные карты выдаются «дилеру», против которого играет пользователь. 
> 3) Пользователь не видит карты дилера, вместо них показываются звездочки.
Пользователь видит сумму своих очков. 
> 4) Сумма считается так: от 2 до 10 - по номиналу карты, все «картинки» - по 10, туз - 1 или 11, в зависимости от того, какое значение будет ближе к 21 и что не ведет к проигрышу (сумме более 21).
> 5) После раздачи, автоматически делается ставка в банк игры в размере 10 долларов от игрока и диллера. (У игрока и дилера вычитается 10 из банка)
> 6) После этого ход переходит пользователю. 
> 7) У пользователя есть на выбор 3 варианта:
>> - Пропустить. В этом случае, ход переходит к дилеру (см. ниже)
>> - Добавить карту. (только если у пользователя на руках 2 карты). В этом случае игроку добавляется еще одна случайная карта, сумма очков пересчитывается, ход переходит дилеру. Может быть добавлена только одна карта. 
>> - Открыть карты. Открываются карты дилера и игрока, игрок видит сумму очков дилера, идет подсчет результатов игры (см. ниже). 
> 1) Ход дилера (управляется программой, цель - выиграть, т.е набрать сумму очком, максимально близкую к 21). 
> 2) Дилер может:
>> - Пропустить ход (если очков у дилера 17 или более). Ход переходит игроку. 
>> - Добавить карту (если очков менее 17). У дилера появляется новая карта (для пользователя закрыта). После этого ход переходит игроку. Может быть добавлена только одна карта.
> 1) Игроки вскрывают карты либо по достижению у них по 3 карты (автоматически), либо когда пользователь выберет вариант «Открыть карты». 
> 2) После этого пользователь видит карты дилера и сумму его очков, а также результат игры (кто выиграл и кто проиграл).
> 3) Подсчет результатов:
>> - Выигрывает игрок, у которого сумма очков ближе к 21.
>> - Если у игрока сумма очков больше 21, то он проиграл.
>> - Если сумма очков у игрока и дилера одинаковая, то объявляется ничья и деньги из банка возвращаются игрокам.
>> - Сумма из банка игры переходит к выигравшему.
> 1) После окончания игры, консоль спрашивает у пользователя, хочет ли он сыграть еще раз. 
> 2) Если да, то игра начинается заново с раздачи карт, если нет - то завершаем работу.
