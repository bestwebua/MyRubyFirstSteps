=begin
Task about coins by Vladislav Trotsenko.

Get the num of all coins combinations.
Посчитать количество способов вернуть сдачу.

Динамическое программирование лекция 1 часть 8 (новый курс),
задача о сдаче: https://www.youtube.com/watch?v=mpdXi9FqK2Q
=end

def get_coins_combinations(amount)
  return 1 if amount <= 2
    coins = [1, 3, 5, 10]
      amount-coins[0]
end

p get_coins_combinations(30)