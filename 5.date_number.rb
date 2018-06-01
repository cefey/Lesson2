
#Функция рассчета високосного года
def leap_year (year)
    if (year % 4 == 0 &&  year % 100 == 0 ) || year % 400 ==0
      return 29
    else
      return 28
    end
  end
  
  def input_day () #функция ввода дня месяца  с проверкой
    d=gets.chomp.to_i
    if (d <=0 || d >31)
      puts "Вы ввели некорректный день месяца"
      input_day
    else
      return d
    end
  end
    def input_month() #функция ввода номера месяца  с проверкой
      m=gets.chomp.to_i
      if (m <=0 || m > 12)
        puts "Вы ввели некорректный номер  месяца"
        input_month
      else
        return m
      end
    end
  
  #Запросим данные от пользователя
  puts "Введите число месяца "
  day = input_day
  puts "Введите месяц"
  month = input_month
  puts "Введите год"
  year = gets.chomp.to_i
  
  #Заполним массив с количеством дней в каждом месяце
  
  months_day = [0, 31, leap_year(year), 31, 30, 31, 30, 31, 31, 30, 31, 30]
  
  # Обрезаем массив до диапазоно целых месяцев, входящих в сумму. Затем сумируем их
  full_months_days_total = months_day [0...month].sum
  puts "Прошло дней от начала года: #{full_months_days_total  + day}"
  