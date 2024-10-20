#Faça uma função calculadora de dois números com três parâmetros: os dois primeiros serão os números da operação e o terceiro será a entrada que definirá a operação a ser executada. Considera a seguinte definição:
# 1. Soma
# 2. Subtração
# 3. Multiplicação
# 4. Divisão
# Caso seja inserido um número de operação que não exista, o resultado deverá ser 0.

def calc (num1,num2,opera):
  if (opera == 1):
    res = num1 + num2
    return res
  elif (opera == 2):
    res = num1 - num2
    return res
  elif (opera == 3):
    res = num1 * num2
    return res
  elif (opera == 4):
    res = num1/num2
    return res
  else: return 0

num1 = 4
num2 = 1
opera = 1
resposta = calc(num1,num2,opera)
print ("O resultado é:",resposta)
