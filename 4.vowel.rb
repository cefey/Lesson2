alphabit = ('a'..'z').to_a #Заполним массив латиницей
hash_alphabit = {} # хэш для хранения номера гласной буквы
vowels = ['a','e','i','o','u','y'] #массив гласных букв для сравнения с алфавитом
#Заполним хэш буквами с численными значениями
alphabit.each do |i|
  hash_alphabit[i] = alphabit.find_index(i) + 1
end
# выводим гласные буквы из хэша
hash_alphabit.each do |key,value|
  if vowels.include? (key)
    puts "#{key}: #{value}"
  end
end
