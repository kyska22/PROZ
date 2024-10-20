def calc (num1,num2,calculo):
  if (calculo == 1):
    res = num1 + num2
    return res
  elif (calculo == 2):
    res = num1 - num2
    return res
  elif (calculo == 3):
    res = num1 * num2
    return res
  elif (calculo == 4):
    res = num1/num2
    return res
  else: return 0

exec = True

while (exec == True):
  print("escolha do 1 ao 4 a operação a fazer:")
  print("1-soma:2-resta:3-multiplicação:4-divisão:0-sair")
  calculo = int(input())
  if (calculo < 0) or (calculo > 4):
    print("Você digito uma opção não valida:")
  elif (calculo == 0):
    exec = False
  else:
    print("insira numero1:")
    num1 = int(input())
    print("insira numero2:")
    num2 = int(input()) 

    resultado = calc(num1,num2,calculo) 
