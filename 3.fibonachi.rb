fib=[0] #инициализируем массив с начальным значением
fib_summ=1 # переменная для складывания чисел фибоначчи
while fib_summ <100
  fib.push (fib_summ)
  fib_summ=fib[fib.size-1]+fib[fib.size-2]
end
p fib
