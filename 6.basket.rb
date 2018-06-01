#создадим хэш корзины для товаров
basket = {}
total_basket = 0 #Итоговая сумма в корзине
name = "" #название товара, пока пустое
puts "Вам необходимо будет поочередно заполнить название, количество и цену товара. Для прекращения заполнения введите слово stop вместо названия товара"
loop do  #Зациклим ввод пока пользователь не введет слово stop
  puts "Введите название товара "
  name = gets.chomp
  break if name.downcase == "stop"
  puts "Введите количество товара "
 count = gets.chomp.to_f
  puts "Введите цену товара"
  coast = gets.chomp.to_f
  basket[name] = {coast: coast,count: count}
end

basket.each do |k,v|
summa = v[:coast] + v[:count] #Получим сумму по каждой позиции товара
puts "Вы приобрели #{k}   на сумму #{summa}"
total_basket += summa
end
puts "Вы приобрели всего товара на сумму #{total_basket}"